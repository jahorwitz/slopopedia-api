/*
  Warnings:

  - Made the column `description` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `content` on table `Post` required. This step will fail if there are existing NULL values in that column.

*/
-- DropIndex
DROP INDEX `Keyword_name_key` ON `Keyword`;

-- -- DropIndex
DROP INDEX `KeywordType_name_key` ON `KeywordType`;

-- -- DropIndex
DROP INDEX `Sound_audio_key` ON `Sound`;

-- AlterTable
-- ALTER TABLE `Movie` MODIFY `description` VARCHAR(191) NOT NULL DEFAULT '';

-- AlterTable
-- ALTER TABLE `Post` MODIFY `content` VARCHAR(191) NOT NULL DEFAULT '';
