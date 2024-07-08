import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import { text, integer, relationship } from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const Keyword: ListConfig<Lists.Keyword.TypeInfo<any>, any> = list({
  access: {
    operation: {
      query: () => true,
      create: ({ session }) => session.data.status === "active",
      update: ({ session }) => session.data.status === "active",
      delete: ({ session }) => session.data.status === "active",
    },
  },
  fields: {
    name: text({ validation: { isRequired: true }, isIndexed: "unique" }),
    handicap: integer({ defaultValue: 0 }),
    keywordType: relationship({ ref: "KeywordType.keywords", many: false }),
    posts: relationship({ ref: "Post.keywords", many: true }),
    movies: relationship({ ref: "Movie.keywords", many: true }),
    userKeyword: relationship({
      ref: "UserKeyword.keyword",
      many: true,
    }),
  },
});
