/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEDISEASESCOMMAND_H_
#define FORCEDISEASESCOMMAND_H_

#include "ForcePowersQueueCommand.h"

class ForceDiseasesCommand : public ForcePowersQueueCommand {
public:

	ForceDiseasesCommand(const String& name, ZoneProcessServer* server)
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

#endif //FORCEDISEASESCOMMAND_H_
