import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import {
  text,
  integer,
  image,
  relationship,
  select,
} from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const Movie: ListConfig<Lists.Movie.TypeInfo<any>, any> = list({
  access: {
    item: {
      create: ({ session }) => session?.data.status === "active",
      update: async ({ session, item }) => {
        // if the owner of this vote is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.authorId) ||
          !!session?.data.isAdmin
        );
      },
      delete: async ({ session, item }) => {
        // if the owner of this vote is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.authorId) ||
          !!session?.data.isAdmin
        );
      },
    },
    operation: {
      query: () => true,
      create: ({ session }) => session.data.status === "active",
      update: ({ session }) => session.data.status === "active",
      delete: ({ session }) => session.data.status === "active",
    },
  },
  fields: {
    // The user who submitted the movie
    author: relationship({
      ref: "User.movies",
      ui: {
        displayMode: "cards",
        cardFields: ["username", "email"],
        inlineEdit: { fields: ["username", "email"] },
        linkToItem: true,
        inlineConnect: true,
      },
      many: false,
    }),
    title: text({ validation: { isRequired: true } }),
    description: text({ validation: { isRequired: true } }),
    releaseYear: integer({ defaultValue: 1970 }),
    runtime: integer({
      defaultValue: 0,
      ui: {
        description: "Enter the runtime in minutes",
      },
    }),
    photo: image({ storage: "my_S3_images" }),
    tomatoScore: integer({
      defaultValue: 0,
      ui: {
        description: "Enter the Rotten Tomatoes Percentage as an integer",
      },
    }),
    howToWatch: text(),
    handicap: integer({ defaultValue: 0 }),

    posts: relationship({ ref: "Post.movies", many: true }),
    sounds: relationship({ ref: "Sound.movies", many: true }),
    keywords: relationship({ ref: "Keyword.movies", many: true }),
    status: select({
      options: [
        { label: "Published", value: "published" },
        { label: "Draft", value: "draft" },
      ],
      defaultValue: "draft",
    }),
  },
});
