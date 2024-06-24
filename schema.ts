import { list } from "@keystone-6/core";
import { allowAll } from "@keystone-6/core/access";
import { text, image } from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const lists = {
  Image: list({
    access: allowAll,
    fields: {
      title: text({ validation: { isRequired: true } }),
      content: text(),
      banner: image({ storage: "my_S3_images" }),
    },
  }),
} satisfies Lists;
