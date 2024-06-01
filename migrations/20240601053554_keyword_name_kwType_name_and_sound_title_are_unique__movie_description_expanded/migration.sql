/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `Keyword` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name]` on the table `KeywordType` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[title]` on the table `Sound` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `movie` MODIFY `description` TEXT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Keyword_name_key` ON `Keyword`(`name`);

-- CreateIndex
CREATE UNIQUE INDEX `KeywordType_name_key` ON `KeywordType`(`name`);

-- CreateIndex
CREATE UNIQUE INDEX `Sound_title_key` ON `Sound`(`title`);
