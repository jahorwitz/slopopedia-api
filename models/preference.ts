import { list } from "@keystone-6/core";
import type { ListConfig } from "@keystone-6/core";
import { text, select, relationship } from "@keystone-6/core/fields";
import type { Lists } from ".keystone/types";

export const Preference: ListConfig<Lists.Preference.TypeInfo<any>, any> = list(
  {
    access: {
      operation: {
        query: () => true,
        create: ({ session }) =>
          !!session?.data.isAdmin && session.data.status === "active",
        update: ({ session }) =>
          !!session?.data.isAdmin && session.data.status === "active",
        delete: ({ session }) =>
          !!session?.data.isAdmin && session.data.status === "active",
      },
    },
    fields: {
      category: select({
        type: "integer",
        options: [
          { label: "Production", value: 1 },
          {
            label: "Critters & Characters",
            value: 2,
          },
          {
            label: "Writing",
            value: 3,
          },
          {
            label: "People",
            value: 4,
          },
          {
            label: "Hairstyles",
            value: 5,
          },
          {
            label: "Other Preferences",
            value: 6,
          },
          {
            label: "Green Threshold",
            value: 7,
          },
        ],
      }),
      name: text({ validation: { isRequired: true } }),
      type: select({
        type: "enum",
        options: [
          { label: "Single-Select", value: "radio" },
          {
            label: "Number",
            value: "integer",
          },
        ],
        defaultValue: "radio",
        validation: { isRequired: true },
      }),
      userPreference: relationship({
        ref: "UserPreference.preference",
        many: true,
      }),
    },
  },
);
