/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEFIRECOMMAND_H_
#define FORCEFIRECOMMAND_H_

#include "ForcePowersQueueCommand.h"

class ForceFireCommand : public ForcePowersQueueCommand {
public:

	ForceFireCommand(const String& name, ZoneProcessServer* server)
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

#endif //FORCEFIRECOMMAND_H_
