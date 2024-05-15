import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import { text, image, file, relationship } from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const Sound: ListConfig<Lists.Sound.TypeInfo<any>, any> = list({
  access: {
    item: {
      create: ({ session }) => session?.data.status === "active",
      update: async ({ session, item }) => {
        // if the owner of this sound is the same as the logged in user OR the logged in user is an admin, allow the operation
        return (
          (!!session?.data.id && session.data.id === item.authorId) ||
          !!session?.data.isAdmin
        );
      },
      delete: async ({ session, item }) => {
        // if the owner of this sound is the same as the logged in user OR the logged in user is an admin, allow the operation
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
    // The user who submitted the sound
    author: relationship({
      ref: "User.sounds",
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
    photo: image({ storage: "my_S3_images" }),
    movies: relationship({ ref: "Movie.sounds", many: true }),
    audio: file({ storage: "my_S3_sounds" }),
  },
});
