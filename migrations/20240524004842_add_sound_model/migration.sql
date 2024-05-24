-- CreateTable
CREATE TABLE `Sound` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL DEFAULT '',
    `photo_filesize` INTEGER NULL,
    `photo_extension` VARCHAR(191) NULL,
    `photo_width` INTEGER NULL,
    `photo_height` INTEGER NULL,
    `photo_id` VARCHAR(191) NULL,
    `audio_filesize` INTEGER NULL,
    `audio_filename` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_Movie_sounds` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_Movie_sounds_AB_unique`(`A`, `B`),
    INDEX `_Movie_sounds_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_Movie_sounds` ADD CONSTRAINT `_Movie_sounds_A_fkey` FOREIGN KEY (`A`) REFERENCES `Movie`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Movie_sounds` ADD CONSTRAINT `_Movie_sounds_B_fkey` FOREIGN KEY (`B`) REFERENCES `Sound`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
