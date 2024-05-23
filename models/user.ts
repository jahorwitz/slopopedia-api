import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import {
  text,
  select,
  checkbox,
  password,
  timestamp,
  relationship,
} from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const User: ListConfig<Lists.User.TypeInfo<any>, any> = list({
  access: {
    item: {
      create: () => true,
      update: async ({ session, item }) => {
        // if this user is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.id) ||
          !!session?.data.isAdmin
        );
      },
      delete: async ({ session, item }) => {
        // if this user is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.id) ||
          !!session?.data.isAdmin
        );
      },
    },
    operation: {
      query: () => true,
      create: () => true,
      update: () => true,
      delete: () => true,
    },
  },
  fields: {
    // GobbID
    username: text({ validation: { isRequired: true }, isIndexed: "unique" }),

    email: text({
      validation: {
        isRequired: true,
        match: {
          regex: /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/,
        },
      },
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

    status: select({
      options: [
        { label: "Active", value: "active" },
        { label: "Suspended", value: "suspended" },
      ],
      defaultValue: "active",
    }),

    isAdmin: checkbox({ defaultValue: false }),

    posts: relationship({ ref: "Post.author", many: true }),
    movies: relationship({ ref: "Movie.author", many: true }),
    wishlist: relationship({ ref: "Movie", many: true }),
    watched: relationship({ ref: "Movie", many: true }),
    preferences: relationship({ ref: "UserPreference.user", many: true }),
    myFests: relationship({
      ref: "Fest.creator",
      many: true,
      ui: {
        description: "Fests this user has created",
      },
    }),
    festAttendees: relationship({
      ref: "Fest.attendees",
      many: true,
      ui: {
        description: "Fests this user is involved with as an attendee",
      },
    }),
    festInvitees: relationship({
      ref: "Fest.invitees",
      many: true,
      ui: {
        description: "Fests this user is involved with as an invitee",
      },
    }),
    festVotes: relationship({
      ref: "FestVote.user",
      many: true,
    }),
    festNotes: relationship({
      ref: "FestNote.user",
      many: true,
    }),

    createdAt: timestamp({
      defaultValue: { kind: "now" },
    }),
    lastLoginDate: timestamp({
      defaultValue: { kind: "now" },
    }),
  },
});
