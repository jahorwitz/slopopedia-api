/*
  Warnings:

  - You are about to drop the column `author` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the `Slop` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_Post_slops` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Post` DROP FOREIGN KEY `Post_author_fkey`;

-- DropForeignKey
ALTER TABLE `_Post_slops` DROP FOREIGN KEY `_Post_slops_A_fkey`;

-- DropForeignKey
ALTER TABLE `_Post_slops` DROP FOREIGN KEY `_Post_slops_B_fkey`;

-- AlterTable
ALTER TABLE `Movie` ADD COLUMN `assignedTo` VARCHAR(191) NULL,
    ADD COLUMN `photo_extension` VARCHAR(191) NULL,
    ADD COLUMN `photo_filesize` INTEGER NULL,
    ADD COLUMN `photo_height` INTEGER NULL,
    ADD COLUMN `photo_id` VARCHAR(191) NULL,
    ADD COLUMN `photo_width` INTEGER NULL,
    ADD COLUMN `posts` VARCHAR(191) NULL,
    ADD COLUMN `wishlist` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Post` DROP COLUMN `author`,
    ADD COLUMN `assignedTo` VARCHAR(191) NULL,
    ADD COLUMN `photo_extension` VARCHAR(191) NULL,
    ADD COLUMN `photo_filesize` INTEGER NULL,
    ADD COLUMN `photo_height` INTEGER NULL,
    ADD COLUMN `photo_id` VARCHAR(191) NULL,
    ADD COLUMN `photo_width` INTEGER NULL;

-- DropTable
DROP TABLE `Slop`;

-- DropTable
DROP TABLE `_Post_slops`;

-- CreateTable
CREATE TABLE `Preference` (
    `id` VARCHAR(191) NOT NULL,
    `category` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `UserPreference` (
    `id` VARCHAR(191) NOT NULL,
    `user` VARCHAR(191) NULL,

    INDEX `UserPreference_user_idx`(`user`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_Keyword_movies` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_Keyword_movies_AB_unique`(`A`, `B`),
    INDEX `_Keyword_movies_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_UserPreference_preference` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_UserPreference_preference_AB_unique`(`A`, `B`),
    INDEX `_UserPreference_preference_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE INDEX `Movie_assignedTo_idx` ON `Movie`(`assignedTo`);

-- CreateIndex
CREATE INDEX `Movie_wishlist_idx` ON `Movie`(`wishlist`);

-- CreateIndex
CREATE INDEX `Movie_posts_idx` ON `Movie`(`posts`);

-- CreateIndex
CREATE INDEX `Post_assignedTo_idx` ON `Post`(`assignedTo`);

-- AddForeignKey
ALTER TABLE `Post` ADD CONSTRAINT `Post_assignedTo_fkey` FOREIGN KEY (`assignedTo`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Movie` ADD CONSTRAINT `Movie_assignedTo_fkey` FOREIGN KEY (`assignedTo`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Movie` ADD CONSTRAINT `Movie_wishlist_fkey` FOREIGN KEY (`wishlist`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Movie` ADD CONSTRAINT `Movie_posts_fkey` FOREIGN KEY (`posts`) REFERENCES `Post`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `UserPreference` ADD CONSTRAINT `UserPreference_user_fkey` FOREIGN KEY (`user`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Keyword_movies` ADD CONSTRAINT `_Keyword_movies_A_fkey` FOREIGN KEY (`A`) REFERENCES `Keyword`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Keyword_movies` ADD CONSTRAINT `_Keyword_movies_B_fkey` FOREIGN KEY (`B`) REFERENCES `Movie`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_UserPreference_preference` ADD CONSTRAINT `_UserPreference_preference_A_fkey` FOREIGN KEY (`A`) REFERENCES `Preference`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_UserPreference_preference` ADD CONSTRAINT `_UserPreference_preference_B_fkey` FOREIGN KEY (`B`) REFERENCES `UserPreference`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
