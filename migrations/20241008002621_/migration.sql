/*
  Warnings:

  - You are about to drop the `Preference` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `UserKeyword` DROP FOREIGN KEY `UserPreference_preference_fkey`;

-- DropForeignKey
ALTER TABLE `UserKeyword` DROP FOREIGN KEY `UserPreference_user_fkey`;

-- DropTable
DROP TABLE `Preference`;
        
