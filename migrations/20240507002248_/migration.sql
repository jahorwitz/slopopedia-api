-- AlterTable
ALTER TABLE `keyword` ADD COLUMN `keywordType` VARCHAR(191) NULL;

-- CreateTable
CREATE TABLE `KeywordType` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE INDEX `Keyword_keywordType_idx` ON `Keyword`(`keywordType`);

-- AddForeignKey
ALTER TABLE `Keyword` ADD CONSTRAINT `Keyword_keywordType_fkey` FOREIGN KEY (`keywordType`) REFERENCES `KeywordType`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
