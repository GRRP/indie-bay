//The following is a list of defs to be used for the Torch loadout.

//For all SolGov personnel, representative included
#define SOLGOV_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/bridgeofficer, /datum/job/sea, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/qm, /datum/job/cargo_tech, /datum/job/janitor, /datum/job/chef, /datum/job/crew, /datum/job/pathfinder, /datum/job/explorer)

//For EC/Fleet/Marines
#define MILITARY_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/bridgeofficer, /datum/job/sea, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/qm, /datum/job/cargo_tech, /datum/job/janitor, /datum/job/chef, /datum/job/crew, /datum/job/pathfinder, /datum/job/explorer)

//For EC/Fleet/Marine Officers
#define MILITARY_OFFICER_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/bridgeofficer, /datum/job/senior_doctor, /datum/job/qm, /datum/job/pathfinder)

//For EC/Fleet/Marine Enlisted
#define MILITARY_ENLISTED_ROLES list(/datum/job/sea, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/qm, /datum/job/cargo_tech, /datum/job/janitor, /datum/job/chef, /datum/job/crew, /datum/job/explorer, /datum/job/officer)

//For all civilians or off-duty personnel, regardless of formality of dress or job.
#define NON_MILITARY_ROLES list( /datum/job/senior_scientist,/datum/job/scientist,/datum/job/mining,/datum/job/assistant, /datum/job/roboticist, /datum/job/chemist, /datum/job/psychiatrist, /datum/job/bartender, /datum/job/merchant, /datum/job/stowaway)

//For jobs that allow for decorative or ceremonial clothing
#define FORMAL_ROLES list(/datum/job/senior_scientist, /datum/job/scientist, /datum/job/psychiatrist, /datum/job/assistant, /datum/job/bartender, /datum/job/merchant, /datum/job/stowaway, /datum/job/detective)

//For civilian jobs that may have a uniform, but not a strict one
#define SEMIFORMAL_ROLES list(/datum/job/assistant, /datum/job/mining,/datum/job/psychiatrist, /datum/job/bartender, /datum/job/merchant, /datum/job/stowaway, /datum/job/scientist, /datum/job/senior_scientist, /datum/job/detective)

//For civilian jobs that may have a strict uniform.
#define SEMIANDFORMAL_ROLES list(/datum/job/assistant, /datum/job/mining, /datum/job/psychiatrist, /datum/job/bartender, /datum/job/merchant, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/stowaway, /datum/job/detective)

//For NanoTrasen employees
#define NANOTRASEN_ROLES list( /datum/job/senior_scientist, /datum/job/scientist, /datum/job/mining)

//For contractors
#define CONTRACTOR_ROLES list( /datum/job/roboticist, /datum/job/chemist, /datum/job/psychiatrist, /datum/job/bartender, /datum/job/chef, /datum/job/janitor, /datum/job/detective)

//For corporate or government representatives
#define REPRESENTATIVE_ROLES list(/datum/job)

//For roles with no uniform or formal clothing requirements
#define RESTRICTED_ROLES list(/datum/job/assistant, /datum/job/bartender, /datum/job/merchant, /datum/job/stowaway, )

//For members of the command department
#define COMMAND_ROLES list(/datum/job/captain, /datum/job/hop,/datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/bridgeofficer, /datum/job/sea)

//For members of the medical department
#define MEDICAL_ROLES list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/psychiatrist, /datum/job/chemist)

//For members of the medical department, roboticists, and some Research
#define STERILE_ROLES list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/chemist, /datum/job/psychiatrist, /datum/job/roboticist, /datum/job/senior_scientist, /datum/job/scientist, )

//For members of the engineering department
#define ENGINEERING_ROLES list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist)

//For members of Engineering, Cargo, and Research
#define TECHNICAL_ROLES list(/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech, /datum/job/mining,/datum/job/merchant,/datum/job/senior_scientist, /datum/job/scientist, /datum/job/chief_engineer, /datum/job/janitor)

//For members of the security department
#define SECURITY_ROLES list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer)

//For members of the supply department
#define SUPPLY_ROLES list(/datum/job/qm, /datum/job/cargo_tech)

//For members of the service department
#define SERVICE_ROLES list(/datum/job/janitor, /datum/job/chef, /datum/job/crew, /datum/job/bartender)

//For members of the research department and jobs that are scientific
#define RESEARCH_ROLES list(/datum/job/scientist, /datum/job/mining, /datum/job/assistant, /datum/job/senior_scientist, /datum/job/roboticist)

//For jobs that spawn with weapons in their lockers
#define ARMED_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/sea, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/merchant)

//For jobs that spawn with armor in their lockers
#define ARMORED_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/qm, /datum/job/sea, /datum/job/bridgeofficer, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/merchant)
