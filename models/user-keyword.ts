import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import { integer, relationship } from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

/*
Keywords exist outside of users, but a user can give a "score" to keywords for the sake of recommendations
This becomes the user's "User Keyword" and they own this instance of the keyword with their score
*/

export const UserKeyword: ListConfig<
  Lists.UserKeyword.TypeInfo<any>,
  any
> = list({
  // Any active user can create/update/delete their own keywords, except admins can make changes to other accounts
  access: {
    item: {
      create: ({ session }) => session?.data.status === "active",
      update: async ({ session, item }) => {
        // if the owner of this keyword is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.userId) ||
          !!session?.data.isAdmin
        );
      },
      delete: async ({ session, item }) => {
        // if the owner of this keyword is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.userId) ||
          !!session?.data.isAdmin
        );
      },
    },
    operation: {
      query: ({ session }) => session.data.status === "active",
      create: ({ session }) => session.data.status === "active",
      update: ({ session }) => session.data.status === "active",
      delete: ({ session }) => session.data.status === "active",
    },
  },
  fields: {
    user: relationship({ ref: "User.keywords", many: false }),
    keyword: relationship({ ref: "Keyword.userKeyword", many: false }),
    value: integer({ validation: { isRequired: true } }),
  },
});
