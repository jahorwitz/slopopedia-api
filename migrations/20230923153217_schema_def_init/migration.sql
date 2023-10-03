/*
  Warnings:

  - You are about to drop the column `my_decade` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `sortTitle` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `isPrivileged` on the `User` table. All the data in the column will be lost.
  - You are about to drop the `Slop` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_Post_slops` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `_Post_slops` DROP FOREIGN KEY `_Post_slops_A_fkey`;

-- DropForeignKey
ALTER TABLE `_Post_slops` DROP FOREIGN KEY `_Post_slops_B_fkey`;

-- DropIndex
DROP INDEX `Movie_my_tomatoScore_key` ON `Movie`;

-- AlterTable
ALTER TABLE `Movie` DROP COLUMN `my_decade`,
    DROP COLUMN `sortTitle`,
    ADD COLUMN `author` VARCHAR(191) NULL,
    ADD COLUMN `photo_extension` VARCHAR(191) NULL,
    ADD COLUMN `photo_filesize` INTEGER NULL,
    ADD COLUMN `photo_height` INTEGER NULL,
    ADD COLUMN `photo_id` VARCHAR(191) NULL,
    ADD COLUMN `photo_width` INTEGER NULL,
    MODIFY `my_tomatoScore` INTEGER NULL DEFAULT 0;

-- AlterTable
ALTER TABLE `Post` ADD COLUMN `photo_extension` VARCHAR(191) NULL,
    ADD COLUMN `photo_filesize` INTEGER NULL,
    ADD COLUMN `photo_height` INTEGER NULL,
    ADD COLUMN `photo_id` VARCHAR(191) NULL,
    ADD COLUMN `photo_width` INTEGER NULL;

-- AlterTable
ALTER TABLE `User` DROP COLUMN `isPrivileged`,
    ADD COLUMN `is_privileged` BOOLEAN NOT NULL DEFAULT false;

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
    `my_integer` INTEGER NULL DEFAULT 0,

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
CREATE TABLE `_Movie_posts` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_Movie_posts_AB_unique`(`A`, `B`),
    INDEX `_Movie_posts_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_User_wishlist` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_User_wishlist_AB_unique`(`A`, `B`),
    INDEX `_User_wishlist_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_User_watched` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_User_watched_AB_unique`(`A`, `B`),
    INDEX `_User_watched_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_UserPreference_preference` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_UserPreference_preference_AB_unique`(`A`, `B`),
    INDEX `_UserPreference_preference_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE INDEX `Movie_author_idx` ON `Movie`(`author`);

-- AddForeignKey
ALTER TABLE `Movie` ADD CONSTRAINT `Movie_author_fkey` FOREIGN KEY (`author`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `UserPreference` ADD CONSTRAINT `UserPreference_user_fkey` FOREIGN KEY (`user`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Keyword_movies` ADD CONSTRAINT `_Keyword_movies_A_fkey` FOREIGN KEY (`A`) REFERENCES `Keyword`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Keyword_movies` ADD CONSTRAINT `_Keyword_movies_B_fkey` FOREIGN KEY (`B`) REFERENCES `Movie`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Movie_posts` ADD CONSTRAINT `_Movie_posts_A_fkey` FOREIGN KEY (`A`) REFERENCES `Movie`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Movie_posts` ADD CONSTRAINT `_Movie_posts_B_fkey` FOREIGN KEY (`B`) REFERENCES `Post`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_User_wishlist` ADD CONSTRAINT `_User_wishlist_A_fkey` FOREIGN KEY (`A`) REFERENCES `Movie`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_User_wishlist` ADD CONSTRAINT `_User_wishlist_B_fkey` FOREIGN KEY (`B`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_User_watched` ADD CONSTRAINT `_User_watched_A_fkey` FOREIGN KEY (`A`) REFERENCES `Movie`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_User_watched` ADD CONSTRAINT `_User_watched_B_fkey` FOREIGN KEY (`B`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_UserPreference_preference` ADD CONSTRAINT `_UserPreference_preference_A_fkey` FOREIGN KEY (`A`) REFERENCES `Preference`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_UserPreference_preference` ADD CONSTRAINT `_UserPreference_preference_B_fkey` FOREIGN KEY (`B`) REFERENCES `UserPreference`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
