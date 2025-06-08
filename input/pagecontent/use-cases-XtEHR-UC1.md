# (RC Story 3) – Stroke, cross-border – Duncan Falconer

## Example Story

> NOTE: As an example an actor resource is linked to the Irish female patient within the example story.  Lots of other actors as well as example scenarios could be useful to defined and link within the story, e.g. an example scenario for `An MRI scan was taken as part of her care during the hospital stay`

An [Irish female patient](ActorDefinition-IrishFemalePatient.html) visits a hospital for scheduled care in Spain.  The patient is on a long waiting list for surgery in Ireland. It is estimated that she will be waiting for over two years before being offered an appointment to receive the treatment she needs within the Irish health service.  During a regular consultant check-up, the patient is informed that the surgery she requires is available in Spain, where scheduled care waiting lists are minimal.  The patient applies to the health service in Ireland to receive prior permission to avail of the treatment service in Spain as part of her entitlement to seek cross-border healthcare, where similar treatments are available in other member states.  Authorisation is granted and the patient books a surgery appointment in Spain.  The patient informs the clinician in Spain that she has consented to participate in the MyHealth@EU eHealth Cross Border Service and that prior to leaving Ireland, she had a related medical episode which necessitated her being taken by ambulance to the emergency department which resulted in an overnight stay in hospital.  An MRI scan was taken as part of her care during the hospital stay.  The Spanish consultant surgeon also participates in the MyHealth@EU eHealth Cross Border Service.  Upon verification of the patient’s identity, the clinician is able to access the patient’s Medical Imaging Study & Report along with other reports if available, (i.e. Hospital Discharge Report, Laboratory Results, ePrescription and Shared Care record), in Ireland, which are made available through the cross border interoperable service and where relevant medical information particular to the particular treatment to be administered, is reported.  As a result, the consultant in Spain is able to formulate a timely opinion much earlier in the process to provide the level of treatment that this female requires.  Had access to the Medical Imaging Study & Report information not been readily available, the Spanish consultant would have had to order additional unnecessary diagnostic procedures and medical checks in Spain. Having access to the recent Medical Imaging Study & Report, assists the consultant surgeon to form timely opinion to determine suitable treatment regimes of medical intervention action required to treat the patient. |

## Use Case Diagram

<div style="text-align: left;">
  {%include use-cases-XtEHR-UC1.svg%}
</div>

### Scoped use cases

The main use cases identified from the example story from the use case description are

* Regular Check Up
* Application to Health Care Service
* Emergency Episode Requiring MRI
* Application to MyHealth@EUService
* Verification of Patient Identity
* Verify User Access
* Access Patient Health Record
* Surgical Intervention in Spain

> NOTE: Most of these likely fall in the scope of other specification, e.g. national specification on patient care and broader XtEHR concepts such as application for cross border health services, verification of identity etc.

> NOTE: The only use cases use cases that fall within the scope of imaging is likely `Emergency Episode Requiring MRI` and `Surgical Intervention in Spain` where the imaging results from the former usecase will be required.

## Business Process
### Emergency Episode Requiring MRI

> NOTE: This is a high level happy path and as such is including large undefined sub processes.

<div>
    <img style="max-width: 100%" alt="Emergency Episode Requiring MRI BPMN diagram." src="use-cases-XtEHR-UC1.bpmn.svg"/>
</div>

## Interaction Diagram
### Emergency Episode Requiring MRI

> NOTE: Other resources would likely be required (illustrated in the data entities), however for brevity on the main resources required within the use case are included.  There are also potentially many relevant optional and alternative flows, but have been left out again for brevity.

<div style="text-align: left;">
  {%include use-cases-XtEHR-UC1-mri-seq.svg%}
</div>