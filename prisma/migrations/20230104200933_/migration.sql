/*
  Warnings:

  - You are about to drop the column `updatedId` on the `UpdatePoint` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[id,belongsToId]` on the table `Product` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `updateId` to the `UpdatePoint` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "UpdatePoint" DROP CONSTRAINT "UpdatePoint_updatedId_fkey";

-- AlterTable
ALTER TABLE "UpdatePoint" DROP COLUMN "updatedId",
ADD COLUMN     "updateId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Product_id_belongsToId_key" ON "Product"("id", "belongsToId");

-- AddForeignKey
ALTER TABLE "UpdatePoint" ADD CONSTRAINT "UpdatePoint_updateId_fkey" FOREIGN KEY ("updateId") REFERENCES "Update"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
