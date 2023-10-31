import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import { text, calendarDay, relationship } from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const Fest: ListConfig<Lists.Fest.TypeInfo<any>, any> = list({
  // Any active user can create/update/delete fests, but only the owner of a fest (or an admin) can update/delete a given fest
  access: {
    item: {
      create: ({ session }) => session?.data.status === "active",
      update: async ({ session, item }) => {
        // if the owner of this fest is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.creatorId) ||
          !!session?.data.isAdmin
        );
      },
      delete: async ({ session, item }) => {
        // if the owner of this fest is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.creatorId) ||
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
    name: text({ validation: { isRequired: true } }),

    startDate: calendarDay({
      validation: { isRequired: true },
    }),

    endDate: calendarDay({
      validation: { isRequired: true },
    }),

    creator: relationship({
      ref: "User.myFests",
      ui: {
        displayMode: "cards",
        cardFields: ["username", "email"],
        inlineEdit: { fields: ["username", "email"] },
        linkToItem: true,
        inlineConnect: true,
      },
      many: false,
    }),
    attendees: relationship({
      ref: "User.fests",
      ui: {
        displayMode: "cards",
        cardFields: ["username", "email"],
        inlineEdit: { fields: ["username", "email"] },
        linkToItem: true,
        inlineConnect: true,
      },
      many: true,
    }),
    movies: relationship({
      ref: "Movie",
      many: true,
      ui: {
        displayMode: "cards",
        cardFields: ["title"],
        inlineEdit: { fields: ["title"] },
        linkToItem: true,
        inlineConnect: true,
        inlineCreate: { fields: ["title"] },
      },
    }),
    festVotes: relationship({
      ref: "FestVote.fest",
      many: true,
    }),
    festNotes: relationship({
      ref: "FestNote.fest",
      many: true,
    }),
  },
});
