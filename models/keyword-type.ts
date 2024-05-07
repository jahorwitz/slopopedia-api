import { list } from "@keystone-6/core";
import { text, relationship } from "@keystone-6/core/fields";

export const KeywordType = list({
  access: {
    operation: {
      query: () => true,
      create: ({ session }) => session.data.status === "active",
      update: ({ session }) => session.data.status === "active",
      delete: ({ session }) => session.data.status === "active",
    },
  },
  fields: {
    name: text({ validation: { isRequired: true } }),
    keywords: relationship({ ref: "Keyword.keywordType", many: true }),
  },
});
