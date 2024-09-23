/*
  Warnings:

  - You are about to drop the column `totalPurchased` on the `PurchaseSummary` table. All the data in the column will be lost.
  - You are about to drop the column `totalCost` on the `Purchases` table. All the data in the column will be lost.
  - You are about to drop the column `unitCost` on the `Purchases` table. All the data in the column will be lost.
  - Added the required column `totalValue` to the `PurchaseSummary` table without a default value. This is not possible if the table is not empty.
  - Added the required column `totalAmount` to the `Purchases` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unitPrice` to the `Purchases` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PurchaseSummary" DROP COLUMN "totalPurchased",
ADD COLUMN     "totalValue" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "Purchases" DROP COLUMN "totalCost",
DROP COLUMN "unitCost",
ADD COLUMN     "totalAmount" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "unitPrice" DOUBLE PRECISION NOT NULL;
