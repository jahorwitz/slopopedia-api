import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import { text, relationship } from "@keystone-6/core/fields";
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
    name: text({ validation: { isRequired: true } }),
    posts: relationship({ ref: "Post.keywords", many: true }),
    movies: relationship({ ref: "Movie.keywords", many: true }),
  },
});
