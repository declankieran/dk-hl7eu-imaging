Instance: EmergencyEpisodeRequiringMRI
InstanceOf: ExampleScenario
Usage: #definition
* status = #draft
* purpose = "Purpose: this scenario is to demonstrate the process of an MRI being identified as required in an ED setting and the associated data around this episode."
* actor[0].key = "IrishFemalePatient"
* actor[=].type = #person
* actor[=].title = "Irish Female Patient"
* actor[=].description = "Irish female patient who required emergency attention."
* actor[+].key = "Ambulance"
* actor[=].type = #system
* actor[=].title = "Ambulance"
* actor[=].description = "Ambulance that responded to emergency call."
* actor[+].key = "EmergencyDepartment"
* actor[=].type = #system
* actor[=].title = "Emergency Department"
* actor[=].description = "The emergency department the patient was received at."
* actor[+].key = "HospitalWard"
* actor[=].type = #system
* actor[=].title = "Hospital Ward"
* actor[=].description = "The hospital ward the patient was admitted to."
* actor[+].key = "MRIScanner"
* actor[=].type = #system
* actor[=].title = "MRI Scanner"
* actor[=].description = "The device that carries out the required imaging procedure."
* instance[0].key = "AmbulanceCareTeam-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #CareTeam
* instance[=].title = "Ambulance Response Team"
* instance[=].description = "The ambulance team that responded to the Irish female patient's call."
* instance[+].key = "IrishFemale-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #Patient
* instance[=].title = "Irish Female Patient"
* instance[=].description = "The patient resource for the Irish female."
* instance[+].key = "AmbulanceEncounter-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #Encounter
* instance[=].title = "Ambulance Encounter with Irish Female Patient"
* instance[=].description = "The record of the encounter involving the ambulance and the Irish female patient."
* instance[+].key = "EmergencyCarePlan-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #CarePlan
* instance[=].title = "Irish Female Patient Emergency Care Plan"
* instance[=].description = "The care plan created to provide emergency care for the Irish female patient.  For simplicity this covers the entire episode of care.  EpisodeOfCare not included, but could be useful for more complex care plan requirements"
* instance[0].key = "EmergencyDepartmentCareTeam-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #CareTeam
* instance[=].title = "Emergency Department Care Team"
* instance[=].description = "The practitioner assigned to provide care to the patient in the hospital."
* instance[+].key = "TriageEncounter-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #Encounter
* instance[=].title = "Emergency Department Triage Encounter"
* instance[=].description = "The record of the encounter involving the triage of the Irish female patient."
* instance[+].key = "TriageClinicalImpression-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #ClinicalImpression
* instance[=].title = "Emergency Department Triage Clinical Assessment"
* instance[=].description = "The record of the clinical assessment produced during triage of the Irish female patient."
// Not included in the sequence diagram, there are several potential resource currently being omitted from the sequence diagram, leave this here as a note...
* instance[+].key = "WardAdmissionServiceRequest-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #ServiceRequest
* instance[=].title = "ServiceRequest to Authorise Admission of Patient to Ward"
* instance[=].description = "A ServiceRequest to authorise admitting the Irish female patient to the hospital ward."
* instance[+].key = "WardAdmissionTask-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #Task
* instance[=].title = "Task to Admit Patient to Ward"
* instance[=].description = "A task to track admitting the Irish female patient to the hospital ward."
// ------------------------------------------------------------------------------------------------------
* instance[+].key = "ConsultantClinicalImpression-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #ClinicalImpression
* instance[=].title = "Consultant Clinical Assessment"
* instance[=].description = "A clinical assessment that leads to a condition being identified that requires an MRI."
* instance[+].key = "RequireMRICondition-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #Condition
* instance[=].title = "Require MRI Condition"
* instance[=].description = "An identified condition that requires an MRI."
* instance[+].key = "MRIServiceRequest-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #ServiceRequest
* instance[=].title = "ServiceRequest to Authorise MRI"
* instance[=].description = "A task to track admitting the Irish female patient to the hospital ward."
* instance[+].key = "MRIImagingStudy-todo"
* instance[=].structureType.system = "http://hl7.org/fhir/fhir-types"
* instance[=].structureType.code = #ImagingStudy
* instance[=].title = "ImagingStudy of MRI"
* instance[=].description = "The ImagingStudy resource that links to the MRI DICOM image series ."

* process.title = "Condition Requires an MRI"
* process.description = "The following are the steps within the imaging process that is carried out when an MRI is identified as required after an Irish female patient has been admitted to hospital following assessment within the emergency department of a hospital.."
* process.preConditions = "Clinical assessment has been carried out and record for the patient."
//Covering what image measurements have been taken seems like it would be appropriate for this IG, but for here left out for brevity.
* process.postConditions = "An ImagingStudy is created for the MRI DICOM imaging series."
* process.step[0].number = "1"
* process.step[=].operation.title = "Perform clinical assessment"
* process.step[=].operation.initiator = "HospitalWard"
//* process.step[=].operation.receiver = "PatientHealthRecord"
* process.step[=].operation.description = "A clinical assessment carried out by a hospital consultant."
* process.step[=].operation.request.instanceReference = "ConsultantClinicalImpression-todo"
* process.step[=].operation.response.instanceReference = "bundle-todo"
* process.step[+].number = "2"
* process.step[=].operation.title = "Create Condition requiring MRI"
* process.step[=].operation.initiator = "HospitalWard"
//* process.step[=].operation.receiver = "PatientHealthRecord"
* process.step[=].operation.description = "Based on clinical assessment, a condition is created which requires an MRI."
* process.step[=].operation.request.instanceReference = "RequireMRICondition-todo"
* process.step[=].operation.response.instanceReference = "bundle-todo"
* process.step[+].number = "3"
* process.step[=].operation.title = "Authorise MRI"
* process.step[=].operation.initiator = "HospitalWard"
//* process.step[=].operation.receiver = "PatientHealthRecord"
* process.step[=].operation.description = "Authorise an MRI to be carried out."
* process.step[=].operation.request.instanceReference = "MRIServiceRequest-todo"
* process.step[=].operation.response.instanceReference = "bundle-todo"
* process.step[=].operation.title = "Create MRI ImagingStudy"
* process.step[=].operation.initiator = "MRIScanner"
//* process.step[=].operation.receiver = "PatientHealthRecord"
* process.step[=].operation.description = "Link an ImagingStudy to the MRI DICOM image series."
* process.step[=].operation.request.instanceReference = "MRIImagingStudy-todo"
* process.step[=].operation.response.instanceReference = "bundle-todo"
