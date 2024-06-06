/*
  Warnings:

  - You are about to drop the column `photo_extension` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `photo_filesize` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `photo_height` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `photo_id` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `photo_width` on the `Movie` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `Movie` DROP COLUMN `photo_extension`,
    DROP COLUMN `photo_filesize`,
    DROP COLUMN `photo_height`,
    DROP COLUMN `photo_id`,
    DROP COLUMN `photo_width`,
    ADD COLUMN `imageKey` VARCHAR(191) NOT NULL DEFAULT '';
