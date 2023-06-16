-- DropForeignKey
ALTER TABLE "AgentMemory" DROP CONSTRAINT "AgentMemory_agentId_fkey";

-- DropForeignKey
ALTER TABLE "AgentTrace" DROP CONSTRAINT "AgentTrace_agentId_fkey";

-- AddForeignKey
ALTER TABLE "AgentMemory" ADD CONSTRAINT "AgentMemory_agentId_fkey" FOREIGN KEY ("agentId") REFERENCES "Agent"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AgentTrace" ADD CONSTRAINT "AgentTrace_agentId_fkey" FOREIGN KEY ("agentId") REFERENCES "Agent"("id") ON DELETE CASCADE ON UPDATE CASCADE;
