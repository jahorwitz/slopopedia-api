import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import { timestamp, relationship, text } from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const FestNote: ListConfig<Lists.FestNote.TypeInfo<any>, any> = list({
  // Any active user can create/update/delete notes, but only the owner of a note (or an admin) can update/delete a given note
  access: {
    item: {
      create: ({ session }) => session?.data.status === "active",
      update: async ({ session, item }) => {
        // if the owner of this note is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.userId) ||
          !!session?.data.isAdmin
        );
      },
      delete: async ({ session, item }) => {
        // if the owner of this note is the same as the logged in user OR the logged in user is an admin, allow the operation
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
    content: text({ validation: { isRequired: true } }),
    user: relationship({
      ref: "User.festNotes",
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
    fest: relationship({
      ref: "Fest.festNotes",
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
    createdAt: timestamp({
      defaultValue: { kind: "now" },
    }),
  },
});
