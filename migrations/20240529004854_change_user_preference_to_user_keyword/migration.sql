/*
  Warnings:

  - You are about to drop the `preference` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `UserPreference` DROP FOREIGN KEY `UserPreference_preference_fkey`;

-- DropForeignKey
ALTER TABLE `UserPreference` DROP FOREIGN KEY `UserPreference_user_fkey`;

-- DropTable
DROP TABLE `Preference`;

-- ChangeTableName
ALTER TABLE `UserPreference` RENAME TO `userkeyword`;

-- ChangeColumnName
ALTER TABLE `UserKeyword` RENAME COLUMN `preference` TO `keyword`;

-- AddForeignKey
ALTER TABLE `UserKeyword` ADD CONSTRAINT `UserKeyword_user_fkey` FOREIGN KEY (`user`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `UserKeyword` ADD CONSTRAINT `UserKeyword_keyword_fkey` FOREIGN KEY (`keyword`) REFERENCES `Keyword`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- RenameIndex
ALTER TABLE `UserKeyword` RENAME INDEX `UserPreference_preference_idx` TO `UserKeyword_keyword_idx`;

-- RenameIndex
ALTER TABLE `UserKeyword` RENAME INDEX `UserPreference_user_idx` TO `UserKeyword_user_idx`;
