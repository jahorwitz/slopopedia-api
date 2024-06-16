import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import {
  text,
  select,
  image,
  relationship,
  timestamp,
} from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const Post: ListConfig<Lists.Post.TypeInfo<any>, any> = list({
  // Any active user can create/update/delete posts, but only the owner of a post (or an admin) can update/delete a given post
  access: {
    item: {
      create: ({ session }) => session?.data.status === "active",
      update: async ({ session, item }) => {
        // if the owner of this post is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.authorId) ||
          !!session?.data.isAdmin
        );
      },
      delete: async ({ session, item }) => {
        // if the owner of this post is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.authorId) ||
          !!session?.data.isAdmin
        );
      },
    },
    operation: {
      query: () => true,
      create: ({ session }) => session?.data.status === "active",
      update: ({ session }) => session?.data.status === "active",
      delete: ({ session }) => session?.data.status === "active",
    },
  },
  fields: {
    title: text({ validation: { isRequired: true } }),

    content: text({
      validation: { isRequired: true },
      db: { nativeType: "Text", isNullable: true },
      ui: {
        displayMode: "textarea",
      },
    }),

    photo: image({ storage: "my_S3_images" }),

    author: relationship({
      ref: "User.posts",
      ui: {
        displayMode: "cards",
        cardFields: ["username", "email"],
        inlineEdit: { fields: ["username", "email"] },
        linkToItem: true,
        inlineConnect: true,
      },
      many: false,
    }),

    createdAt: timestamp({
      defaultValue: { kind: "now" },
    }),

    status: select({
      options: [
        { label: "Published", value: "published" },
        { label: "Draft", value: "draft" },
      ],
    }),

    keywords: relationship({
      ref: "Keyword.posts",
      many: true,
      ui: {
        displayMode: "cards",
        cardFields: ["name"],
        inlineEdit: { fields: ["name"] },
        linkToItem: true,
        inlineConnect: true,
        inlineCreate: { fields: ["name"] },
      },
    }),

    movies: relationship({
      ref: "Movie.posts",
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
  },
});
