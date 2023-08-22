-- CreateEnum
CREATE TYPE "Tags" AS ENUM ('CORE', 'TREASURY', 'URGENT', 'XDC_COMMUNITY');

-- CreateEnum
CREATE TYPE "Options" AS ENUM ('YES', 'NO', 'ABSTAIN');

-- CreateTable
CREATE TABLE "Proposal" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "proposal" INTEGER NOT NULL,
    "tags" "Tags"[],
    "description" TEXT NOT NULL,
    "contract" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "created" TEXT NOT NULL,
    "opens" TEXT NOT NULL,
    "closes" TEXT NOT NULL,
    "toll" DOUBLE PRECISION NOT NULL,
    "urls" TEXT[],
    "files" TEXT[],
    "options" "Options"[],
    "burnPercentage" DOUBLE PRECISION NOT NULL,
    "burnAddress" TEXT NOT NULL,
    "communityPercentage" DOUBLE PRECISION NOT NULL,
    "communityAddress" TEXT NOT NULL,
    "uniqueHash" TEXT NOT NULL,

    CONSTRAINT "Proposal_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Proposal_proposal_key" ON "Proposal"("proposal");
