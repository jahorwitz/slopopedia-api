/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `Keyword` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name]` on the table `KeywordType` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[audio]` on the table `Sound` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `Movie` MODIFY `description` TEXT NULL;

-- AlterTable
ALTER TABLE `Post` MODIFY `content` TEXT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Keyword_name_key` ON `Keyword`(`name`);

-- CreateIndex
CREATE UNIQUE INDEX `KeywordType_name_key` ON `KeywordType`(`name`);

-- CreateIndex
CREATE UNIQUE INDEX `Sound_audio_key` ON `Sound`(`audio`);
