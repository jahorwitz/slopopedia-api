-- CreateTable
CREATE TABLE `_Fest_invitees` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_Fest_invitees_AB_unique`(`A`, `B`),
    INDEX `_Fest_invitees_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_Fest_invitees` ADD CONSTRAINT `_Fest_invitees_A_fkey` FOREIGN KEY (`A`) REFERENCES `Fest`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Fest_invitees` ADD CONSTRAINT `_Fest_invitees_B_fkey` FOREIGN KEY (`B`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
