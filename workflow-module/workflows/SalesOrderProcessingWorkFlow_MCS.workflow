{
	"contents": {
		"89b7d141-a9e0-4894-a9b1-c5b677208cb7": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "salesorderprocessingworkflow_mcs",
			"subject": "SalesOrderProcessingWorkFlow_MCS",
			"name": "SalesOrderProcessingWorkFlow_MCS",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"80a0c4d4-34c6-4813-8989-d5c1ec16a4b0": {
					"name": "ApprovalFormkMCS"
				},
				"7b749b84-6e9c-4d48-8c5f-d0eb09a8d649": {
					"name": "ExclusiveGateway1"
				},
				"d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45": {
					"name": "ScriptTask1"
				},
				"935ffc9b-52f0-40c1-8234-537938453ae6": {
					"name": "ServiceTask2"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"6b0a082c-f44b-4eaf-897b-aa5fdebf144b": {
					"name": "SequenceFlow2"
				},
				"bf9151cf-ee97-4990-bee6-71bb894b1ff1": {
					"name": "SequenceFlow3"
				},
				"2dc22d15-dc9c-454b-a2aa-15c1d9aa3a59": {
					"name": "SequenceFlow6"
				},
				"92b55fca-a63e-4cb5-9c7c-13a767b5d6df": {
					"name": "SequenceFlow7"
				},
				"b7ab013d-1588-4ae8-997c-465ff41eeca6": {
					"name": "SequenceFlow8"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"ba395866-a091-4bba-bad4-7d28b6b20911": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "80a0c4d4-34c6-4813-8989-d5c1ec16a4b0"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"de580d82-1180-4ebf-9f42-36caf4693dab": {},
				"6b0555c7-ba99-4a8e-b500-ad2ced07883d": {},
				"a8c07ca3-f2e1-4952-bd02-eac3b4e4178f": {},
				"f596889d-004c-4f5a-8493-2eee275584ec": {},
				"606164b0-787c-43d5-939e-e0604f6001c2": {},
				"4885db33-1196-4de8-a17c-644a8f536bbc": {},
				"24260b3a-ce2f-4cb6-961c-b47a48a0d101": {},
				"568cef70-f139-420b-9e74-b231984048d2": {},
				"df269194-5928-4b74-8258-ec1bdceea303": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 779,
			"y": 223,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 278,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "de580d82-1180-4ebf-9f42-36caf4693dab",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 8,
			"startevent": 1,
			"intermediatetimerevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 2,
			"scripttask": 1,
			"exclusivegateway": 2
		},
		"ba395866-a091-4bba-bad4-7d28b6b20911": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWorkFlow_MCS/WorkflowInput.json",
			"id": "default-start-context"
		},
		"80a0c4d4-34c6-4813-8989-d5c1ec16a4b0": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "ApprovalForm",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "marios-christos.stamatiou@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWorkFlow_MCS/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0.0"
			}],
			"id": "usertask1",
			"name": "ApprovalFormkMCS"
		},
		"de580d82-1180-4ebf-9f42-36caf4693dab": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 228,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "80a0c4d4-34c6-4813-8989-d5c1ec16a4b0"
		},
		"6b0a082c-f44b-4eaf-897b-aa5fdebf144b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "80a0c4d4-34c6-4813-8989-d5c1ec16a4b0",
			"targetRef": "7b749b84-6e9c-4d48-8c5f-d0eb09a8d649"
		},
		"6b0555c7-ba99-4a8e-b500-ad2ced07883d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "278,117 278,468 376,468 376,398",
			"sourceSymbol": "de580d82-1180-4ebf-9f42-36caf4693dab",
			"targetSymbol": "a8c07ca3-f2e1-4952-bd02-eac3b4e4178f",
			"object": "6b0a082c-f44b-4eaf-897b-aa5fdebf144b"
		},
		"7b749b84-6e9c-4d48-8c5f-d0eb09a8d649": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "bf9151cf-ee97-4990-bee6-71bb894b1ff1"
		},
		"a8c07ca3-f2e1-4952-bd02-eac3b4e4178f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 355,
			"y": 376,
			"object": "7b749b84-6e9c-4d48-8c5f-d0eb09a8d649"
		},
		"bf9151cf-ee97-4990-bee6-71bb894b1ff1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "7b749b84-6e9c-4d48-8c5f-d0eb09a8d649",
			"targetRef": "d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45"
		},
		"f596889d-004c-4f5a-8493-2eee275584ec": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "375.75,397 375.75,217.8125",
			"sourceSymbol": "a8c07ca3-f2e1-4952-bd02-eac3b4e4178f",
			"targetSymbol": "606164b0-787c-43d5-939e-e0604f6001c2",
			"object": "bf9151cf-ee97-4990-bee6-71bb894b1ff1"
		},
		"d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWorkFlow_MCS/createSalesOrderRequestMCS.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"606164b0-787c-43d5-939e-e0604f6001c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 325.5,
			"y": 187.8125,
			"width": 100,
			"height": 60,
			"object": "d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45"
		},
		"2dc22d15-dc9c-454b-a2aa-15c1d9aa3a59": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45",
			"targetRef": "935ffc9b-52f0-40c1-8234-537938453ae6"
		},
		"4885db33-1196-4de8-a17c-644a8f536bbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "375.5,217.8125 453.25,217.8125 453.25,188.15625 530.5,188.15625",
			"sourceSymbol": "606164b0-787c-43d5-939e-e0604f6001c2",
			"targetSymbol": "568cef70-f139-420b-9e74-b231984048d2",
			"object": "2dc22d15-dc9c-454b-a2aa-15c1d9aa3a59"
		},
		"92b55fca-a63e-4cb5-9c7c-13a767b5d6df": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"Decline\"}",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "7b749b84-6e9c-4d48-8c5f-d0eb09a8d649",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"24260b3a-ce2f-4cb6-961c-b47a48a0d101": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "376,397 588,397 588,249 802,249",
			"sourceSymbol": "a8c07ca3-f2e1-4952-bd02-eac3b4e4178f",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "92b55fca-a63e-4cb5-9c7c-13a767b5d6df"
		},
		"935ffc9b-52f0-40c1-8234-537938453ae6": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderHeader.request}",
			"responseVariable": "${context.SalesOrderHeader.response}",
			"headers": [{
				"name": "content-type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask2",
			"name": "ServiceTask2"
		},
		"568cef70-f139-420b-9e74-b231984048d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 480.5,
			"y": 158.15625,
			"width": 100,
			"height": 60,
			"object": "935ffc9b-52f0-40c1-8234-537938453ae6"
		},
		"b7ab013d-1588-4ae8-997c-465ff41eeca6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "935ffc9b-52f0-40c1-8234-537938453ae6",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"df269194-5928-4b74-8258-ec1bdceea303": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "530.5,188.15625 680,188.15625 680,240.5 796.5,240.5",
			"sourceSymbol": "568cef70-f139-420b-9e74-b231984048d2",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "b7ab013d-1588-4ae8-997c-465ff41eeca6"
		}
	}
}