import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import { relationship } from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const FestVote: ListConfig<Lists.FestVote.TypeInfo<any>, any> = list({
  // Any active user can create/update/delete votes, but only the owner of a vote (or an admin) can update/delete a given vote
  access: {
    item: {
      create: ({ session }) => session?.data.status === "active",
      update: async ({ session, item }) => {
        // if the owner of this vote is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.userId) ||
          !!session?.data.isAdmin
        );
      },
      delete: async ({ session, item }) => {
        // if the owner of this vote is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.userId) ||
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
    user: relationship({
      ref: "User.festVotes",
      many: false,
      ui: {
        displayMode: "cards",
        cardFields: ["username"],
        inlineEdit: { fields: ["username"] },
        linkToItem: true,
        inlineConnect: true,
        inlineCreate: { fields: ["username"] },
      },
    }),
    movie: relationship({
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
    fest: relationship({
      ref: "Fest.festVotes",
      many: false,
      ui: {
        displayMode: "cards",
        cardFields: ["name"],
        inlineEdit: { fields: ["name"] },
        linkToItem: true,
        inlineConnect: true,
        inlineCreate: { fields: ["name"] },
      },
    }),
  },
});
