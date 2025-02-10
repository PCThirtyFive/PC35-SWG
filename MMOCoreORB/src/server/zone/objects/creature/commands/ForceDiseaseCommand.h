/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEDISEASECOMMAND_H_
#define FORCEDISEASECOMMAND_H_

#include "ForcePowersQueueCommand.h"

class ForceDiseaseCommand : public ForcePowersQueueCommand {
public:

	ForceDiseaseCommand(const String& name, ZoneProcessServer* server)
		: ForcePowersQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

		if (targetObject == nullptr || !targetObject->isCreatureObject()) {
			return INVALIDTARGET;
		}

		return doCombatAction(creature, target);

	}

};

#endif //FORCEDISEASECOMMAND_H_
