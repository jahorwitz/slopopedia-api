/*
  Warnings:

  - You are about to drop the column `author` on the `sound` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `sound` DROP FOREIGN KEY `Sound_author_fkey`;

-- AlterTable
ALTER TABLE `sound` DROP COLUMN `author`;
