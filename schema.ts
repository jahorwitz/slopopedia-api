// Welcome to your schema
//   Schema driven development is Keystone's modus operandi
//
// This file is where we define the lists, fields and hooks for our data.
// If you want to learn more about how lists are configured, please read
// - https://keystonejs.com/docs/config/lists

import { list } from "@keystone-6/core";
import { allowAll } from "@keystone-6/core/access";

// see https://keystonejs.com/docs/fields/overview for the full list of fields
//   this is a few common fields for an example
import {
  text,
  relationship,
  password,
  timestamp,
  integer,
  checkbox,
  select,
  image,
} from "@keystone-6/core/fields";

// the document field is a more complicated field, so it has it's own package
import { document } from "@keystone-6/fields-document";
// if you want to make your own fields, see https://keystonejs.com/docs/guides/custom-fields

// when using Typescript, you can refine your types to a stricter subset by importing
// the generated types from '.keystone/types'
import type { Lists } from ".keystone/types";

export const lists: Lists = {
  User: list({
    // WARNING
    //   for this starter project, anyone can create, query, update and delete anything
    //   if you want to prevent random people on the internet from accessing your data,
    //   you can find out more at https://keystonejs.com/docs/guides/auth-and-access-control
    access: allowAll,

    // this is the fields for our User list
    fields: {
      // by adding isRequired, we enforce that every User should have a name
      //   if no name is provided, an error will be displayed GobbID
      name: text({ validation: { isRequired: true }, isIndexed: "unique" }),

      email: text({
        validation: { isRequired: true },
        // by adding isIndexed: 'unique', we're saying that no user can have the same
        // email as another user - this may or may not be a good idea for your project
        isIndexed: "unique",
      }),

      password: password({
        validation: {
          length: { min: 10, max: 100 },
          isRequired: true,
          rejectCommon: true,
        },
        bcrypt: require("bcryptjs"),
      }),

      // Role based user access.
      role: select({
        type: "enum",
        options: [
          { label: "Admin", value: "admin" },
          { label: "User", value: "user" },
        ],
        defaultValue: "user",
        validation: { isRequired: true },
        ui: { displayMode: "select" },
      }),

      // User account status
      status: select({
        options: [
          { label: "Active", value: "active" },
          { label: "Inactive", value: "inactive" },
          { label: "Suspended", value: "suspended" },
        ],
        defaultValue: "active",
      }),

      // give the user the ability to edit - yes/no
      isPrivileged: checkbox({
        defaultValue: false,
        db: { map: "is_privileged" },
        graphql: {
          isNonNull: {
            read: true,
            create: true,
          },
        },
      }),

      // Green threshold allows the user to see what kinds of scores movies end up with once their preferences are set
      // and choose a lowest score for the movie to receive the green tag on the movie details
      slopRating: integer({ defaultValue: 0, db: { map: "my_integer" } }), // this has to be relation based on UserPreference

      // RELATIONSHIPS
      posts: relationship({ ref: "Post.author", many: true }),
      movies: relationship({ ref: "Movie.author", many: true }),
      wishlist: relationship({
        ref: "Movie",
        // a User can have many movies part of a wishlist
        many: true,
      }),
      // a User can watch many movies
      watched: relationship({ ref: "Movie", many: true }),
      // UserPreference to personalize a Slop experience
      preferences: relationship({ ref: "UserPreference.user", many: true }),

      createdAt: timestamp({
        // this sets the timestamp to Date.now() when the user is first created
        defaultValue: { kind: "now" },
      }),
      lastLoginDate: timestamp({
        // this sets the timestamp to Date.now() when the user was last active
        defaultValue: { kind: "now" },
      }),
    },
  }),

  Post: list({
    // WARNING
    //   for this starter project, anyone can create, query, update and delete anything
    //   if you want to prevent random people on the internet from accessing your data,
    //   you can find out more at https://keystonejs.com/docs/guides/auth-and-access-control
    access: allowAll,

    // this is the fields for our Post list
    fields: {
      title: text({ validation: { isRequired: true } }),

      // the document field can be used for making rich editable content
      //   you can find out more at https://keystonejs.com/docs/guides/document-fields
      content: document({
        formatting: true,
        layouts: [
          [1, 1],
          [1, 1, 1],
          [2, 1],
          [1, 2],
          [1, 2, 1],
        ],
        links: true,
        dividers: true,
      }),

      // a user can post image(s) on their blog
      photo: image({ storage: "my_S3_images" }),

      // with this field, you can set a User as the author for a Post
      author: relationship({
        // we could have used 'User', but then the relationship would only be 1-way
        ref: "User.posts",

        // this is some customisations for changing how this will look in the AdminUI
        ui: {
          displayMode: "cards",
          cardFields: ["name", "email"],
          inlineEdit: { fields: ["name", "email"] },
          linkToItem: true,
          inlineConnect: true,
        },

        // a Post can only have one author
        //   this is the default, but we show it here for verbosity
        many: false,
      }),

      status: select({
        options: [
          { label: "Published", value: "published" },
          { label: "Draft", value: "draft" },
        ],
      }),

      // with this field, you can add some Keywords to Posts
      keywords: relationship({
        // we could have used 'Keyword', but then the relationship would only be 1-way
        ref: "Keyword.posts",

        // a Post can have many Keywords, not just one
        many: true,

        // this is some customisations for changing how this will look in the AdminUI
        ui: {
          displayMode: "cards",
          cardFields: ["name"],
          inlineEdit: { fields: ["name"] },
          linkToItem: true,
          inlineConnect: true,
          inlineCreate: { fields: ["name"] },
        },
      }),

      // with this field, you can add some Slops to Posts
      slops: relationship({
        // we could have used 'Slop', but then the relationship would only be 1-way
        ref: "Movie.posts",

        // a Post can have many Slops, not just one
        many: true,

        // this is some customisations for changing how this will look in the AdminUI
        ui: {
          displayMode: "cards",
          cardFields: ["title"],
          inlineEdit: { fields: ["title"] },
          linkToItem: true,
          inlineConnect: true,
          inlineCreate: { fields: ["title"] },
        },
      }),
    },
  }),

  // this last list is our Keyword list, it only has a name field for now
  Keyword: list({
    // WARNING
    //   for this starter project, anyone can create, query, update and delete anything
    //   if you want to prevent random people on the internet from accessing your data,
    //   you can find out more at https://keystonejs.com/docs/guides/auth-and-access-control
    access: allowAll,

    // setting this to isHidden for the user interface prevents this list being visible in the Admin UI
    ui: {
      isHidden: true,
    },

    // this is the fields for our Tag list
    fields: {
      name: text({ validation: { isRequired: true } }),
      // RELATIONSHIPS
      posts: relationship({ ref: "Post.keywords", many: true }),
      movies: relationship({ ref: "Movie.keywords", many: true }),
    },
  }),

  Movie: list({
    access: allowAll,

    fields: {
      author: relationship({
        // we could have used 'User', but then the relationship would only be 1-way
        ref: "User.movies",

        // this is some customisations for changing how this will look in the AdminUI
        ui: {
          displayMode: "cards",
          cardFields: ["name", "email"],
          inlineEdit: { fields: ["name", "email"] },
          linkToItem: true,
          inlineConnect: true,
        },

        // a Movie can only have one author
        //   this is the default, but we show it here for verbosity
        many: false,
      }),
      title: text({ validation: { isRequired: true } }),
      description: text({ validation: { isRequired: true } }),
      releaseYear: integer({ defaultValue: 0, db: { map: "my_releaseYear" } }),
      runtime: integer({ defaultValue: 0, db: { map: "my_runtime" } }),
      photo: image({ storage: "my_S3_images" }),
      tomatoScore: integer({
        defaultValue: 0,
        db: { map: "my_tomatoScore" },
      }),
      howToWatch: text(),
      handicap: integer({ defaultValue: 0, db: { map: "my_handicap" } }),

      // RELATIONSHIPS
      posts: relationship({ ref: "Post.slops", many: true }),
      keywords: relationship({ ref: "Keyword.movies", many: true }),
    },
  }),
  // both fields req
  Preference: list({
    access: allowAll,
    fields: {
      category: select({
        type: "integer",
        options: [
          { label: "Production", value: 1 },
          {
            label: "Critters & Characters",
            value: 2,
          },
          {
            label: "Writing",
            value: 3,
          },
          {
            label: "Person",
            value: 4,
          },
          {
            label: "Hairstyles",
            value: 5,
          },
          {
            label: "Filter",
            value: 6,
          },
          {
            label: "Handicap",
            value: 7,
          },
          {
            label: "Preference",
            value: 8,
          },
        ],
      }),
      name: text(), // required
    },
  }),

  UserPreference: list({
    access: allowAll,
    fields: {
      // define model structure
      // this can be helpful to find out all the Posts associated with a Tag
      user: relationship({ ref: "User.preferences", many: false }),
      preference: relationship({ ref: "Preference", many: true }),
      // value of preference (number) required
      preference_category: integer({
        defaultValue: 0,
        db: { map: "my_integer" },
      }),
    },
  }),
};
