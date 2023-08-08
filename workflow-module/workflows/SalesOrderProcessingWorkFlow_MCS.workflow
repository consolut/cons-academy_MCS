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
				},
				"626adb64-d169-4a6e-bdea-4f5e6d4c976e": {
					"name": "UserTaskItemDetails"
				},
				"06684ede-7204-468c-ab9d-b4fb2f0a3cff": {
					"name": "ExclusiveGateway3"
				},
				"d292932f-faa6-4c8b-94c0-cac22efbbb95": {
					"name": "ScriptTask2"
				},
				"f6710823-23b3-4534-a17e-9bd2ea67ffae": {
					"name": "ServiceTask3"
				},
				"7de6e83e-93b2-4a44-bf69-523d24cf8a6e": {
					"name": "MailTask1"
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
				},
				"ae489e6c-7c7c-4ff6-925c-69435153385a": {
					"name": "SequenceFlow9"
				},
				"d3c3d0a9-c22e-4222-a997-f1b6fc2138a4": {
					"name": "SequenceFlow11"
				},
				"6eec2b01-3d78-44fb-912b-4288cacd3c38": {
					"name": "SequenceFlow12"
				},
				"d3f4ff78-2843-4037-9887-36da20f4453b": {
					"name": "SequenceFlow14"
				},
				"2780c100-853e-4291-90e5-c2a3df142979": {
					"name": "SequenceFlow15"
				},
				"0c9b2892-83f0-4324-a12a-a0e89abf7397": {
					"name": "SequenceFlow16"
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
		"7b749b84-6e9c-4d48-8c5f-d0eb09a8d649": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "bf9151cf-ee97-4990-bee6-71bb894b1ff1"
		},
		"d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWorkFlow_MCS/createSalesOrderRequestMCS.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
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
		"626adb64-d169-4a6e-bdea-4f5e6d4c976e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Sales order number",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "marios-christos.stamatiou@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWorkFlow_MCS/ItemDetailsForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "itemdetailsform"
			}, {
				"key": "formRevision",
				"value": "1.0.0"
			}],
			"id": "usertask2",
			"name": "UserTaskItemDetails"
		},
		"06684ede-7204-468c-ab9d-b4fb2f0a3cff": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "ExclusiveGateway3",
			"default": "d3f4ff78-2843-4037-9887-36da20f4453b"
		},
		"d292932f-faa6-4c8b-94c0-cac22efbbb95": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWorkFlow_MCS/GetSalesOrderItem.js",
			"id": "scripttask2",
			"name": "ScriptTask2"
		},
		"f6710823-23b3-4534-a17e-9bd2ea67ffae": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesORder('{SalesOrder}')/to_Item",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderItem.request}",
			"responseVariable": "${context.SalesOrderItem.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask3",
			"name": "ServiceTask3"
		},
		"7de6e83e-93b2-4a44-bf69-523d24cf8a6e": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "cb7faa22-c5f5-4b35-8503-fe2262abb5f2"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "80a0c4d4-34c6-4813-8989-d5c1ec16a4b0"
		},
		"6b0a082c-f44b-4eaf-897b-aa5fdebf144b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "80a0c4d4-34c6-4813-8989-d5c1ec16a4b0",
			"targetRef": "7b749b84-6e9c-4d48-8c5f-d0eb09a8d649"
		},
		"bf9151cf-ee97-4990-bee6-71bb894b1ff1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "7b749b84-6e9c-4d48-8c5f-d0eb09a8d649",
			"targetRef": "d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45"
		},
		"2dc22d15-dc9c-454b-a2aa-15c1d9aa3a59": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45",
			"targetRef": "935ffc9b-52f0-40c1-8234-537938453ae6"
		},
		"92b55fca-a63e-4cb5-9c7c-13a767b5d6df": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"decline\" }",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "7b749b84-6e9c-4d48-8c5f-d0eb09a8d649",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"b7ab013d-1588-4ae8-997c-465ff41eeca6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "935ffc9b-52f0-40c1-8234-537938453ae6",
			"targetRef": "626adb64-d169-4a6e-bdea-4f5e6d4c976e"
		},
		"ae489e6c-7c7c-4ff6-925c-69435153385a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "626adb64-d169-4a6e-bdea-4f5e6d4c976e",
			"targetRef": "06684ede-7204-468c-ab9d-b4fb2f0a3cff"
		},
		"d3c3d0a9-c22e-4222-a997-f1b6fc2138a4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "d292932f-faa6-4c8b-94c0-cac22efbbb95",
			"targetRef": "f6710823-23b3-4534-a17e-9bd2ea67ffae"
		},
		"6eec2b01-3d78-44fb-912b-4288cacd3c38": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "f6710823-23b3-4534-a17e-9bd2ea67ffae",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"d3f4ff78-2843-4037-9887-36da20f4453b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "06684ede-7204-468c-ab9d-b4fb2f0a3cff",
			"targetRef": "d292932f-faa6-4c8b-94c0-cac22efbbb95"
		},
		"2780c100-853e-4291-90e5-c2a3df142979": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision == \"decline\" }",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "06684ede-7204-468c-ab9d-b4fb2f0a3cff",
			"targetRef": "7de6e83e-93b2-4a44-bf69-523d24cf8a6e"
		},
		"0c9b2892-83f0-4324-a12a-a0e89abf7397": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "7de6e83e-93b2-4a44-bf69-523d24cf8a6e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
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
				"df269194-5928-4b74-8258-ec1bdceea303": {},
				"011c5435-9a5b-45cb-aba7-ef387b3535f1": {},
				"96c0a86f-f8d5-4bcc-81cc-79b67e0d55d0": {},
				"58e619c8-7875-48ad-aae0-c3acfe2a7a34": {},
				"db920753-bcf7-453a-95c0-ca3f149c7e1d": {},
				"cb9d1eea-7548-40ac-b96d-799ac1e14922": {},
				"4c1a82b1-cd07-4a4b-b286-1948500caf88": {},
				"9862a953-4ded-4129-82d4-e5a99688db9c": {},
				"9011667d-6ebf-4f08-9ced-91476cf03d0a": {},
				"9f8ae203-6582-48af-a688-7972156e62cb": {},
				"893b4fd9-3330-4c98-ac58-f5550dfd2e30": {},
				"4e58caba-0b35-43a4-b5bb-6c4670d202bd": {}
			}
		},
		"ba395866-a091-4bba-bad4-7d28b6b20911": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWorkFlow_MCS/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -143,
			"y": 385,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1163,
			"y": 383,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-127,403.5 48,403.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "de580d82-1180-4ebf-9f42-36caf4693dab",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"de580d82-1180-4ebf-9f42-36caf4693dab": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -2,
			"y": 376,
			"width": 100,
			"height": 60,
			"object": "80a0c4d4-34c6-4813-8989-d5c1ec16a4b0"
		},
		"6b0555c7-ba99-4a8e-b500-ad2ced07883d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "48,405 173,405",
			"sourceSymbol": "de580d82-1180-4ebf-9f42-36caf4693dab",
			"targetSymbol": "a8c07ca3-f2e1-4952-bd02-eac3b4e4178f",
			"object": "6b0a082c-f44b-4eaf-897b-aa5fdebf144b"
		},
		"a8c07ca3-f2e1-4952-bd02-eac3b4e4178f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 152,
			"y": 385,
			"object": "7b749b84-6e9c-4d48-8c5f-d0eb09a8d649"
		},
		"f596889d-004c-4f5a-8493-2eee275584ec": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "172.75,406 172.75,284.8125 284.75,284.8125",
			"sourceSymbol": "a8c07ca3-f2e1-4952-bd02-eac3b4e4178f",
			"targetSymbol": "606164b0-787c-43d5-939e-e0604f6001c2",
			"object": "bf9151cf-ee97-4990-bee6-71bb894b1ff1"
		},
		"606164b0-787c-43d5-939e-e0604f6001c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 234.5,
			"y": 254.8125,
			"width": 100,
			"height": 60,
			"object": "d2e81ab7-c5e7-4772-b36a-ecabf4f1bb45"
		},
		"4885db33-1196-4de8-a17c-644a8f536bbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "284.5,284.984375 420.5,284.984375",
			"sourceSymbol": "606164b0-787c-43d5-939e-e0604f6001c2",
			"targetSymbol": "568cef70-f139-420b-9e74-b231984048d2",
			"object": "2dc22d15-dc9c-454b-a2aa-15c1d9aa3a59"
		},
		"24260b3a-ce2f-4cb6-961c-b47a48a0d101": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "173,407.5 1186,407.5",
			"sourceSymbol": "a8c07ca3-f2e1-4952-bd02-eac3b4e4178f",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "92b55fca-a63e-4cb5-9c7c-13a767b5d6df"
		},
		"568cef70-f139-420b-9e74-b231984048d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 370.5,
			"y": 255.15625,
			"width": 100,
			"height": 60,
			"object": "935ffc9b-52f0-40c1-8234-537938453ae6"
		},
		"df269194-5928-4b74-8258-ec1bdceea303": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "420.5,285.2421875 579.5,285.2421875",
			"sourceSymbol": "568cef70-f139-420b-9e74-b231984048d2",
			"targetSymbol": "011c5435-9a5b-45cb-aba7-ef387b3535f1",
			"object": "b7ab013d-1588-4ae8-997c-465ff41eeca6"
		},
		"011c5435-9a5b-45cb-aba7-ef387b3535f1": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 529.5,
			"y": 255.328125,
			"width": 100,
			"height": 60,
			"object": "626adb64-d169-4a6e-bdea-4f5e6d4c976e"
		},
		"96c0a86f-f8d5-4bcc-81cc-79b67e0d55d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "579.5,285.1640625 759,285.1640625",
			"sourceSymbol": "011c5435-9a5b-45cb-aba7-ef387b3535f1",
			"targetSymbol": "58e619c8-7875-48ad-aae0-c3acfe2a7a34",
			"object": "ae489e6c-7c7c-4ff6-925c-69435153385a"
		},
		"58e619c8-7875-48ad-aae0-c3acfe2a7a34": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 738,
			"y": 264,
			"object": "06684ede-7204-468c-ab9d-b4fb2f0a3cff"
		},
		"db920753-bcf7-453a-95c0-ca3f149c7e1d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 721.5,
			"y": 111.75,
			"width": 100,
			"height": 60,
			"object": "d292932f-faa6-4c8b-94c0-cac22efbbb95"
		},
		"cb9d1eea-7548-40ac-b96d-799ac1e14922": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "771.5,141.9375 962.25,141.9375 962.25,151.9375 1152.5,151.9375",
			"sourceSymbol": "db920753-bcf7-453a-95c0-ca3f149c7e1d",
			"targetSymbol": "4c1a82b1-cd07-4a4b-b286-1948500caf88",
			"object": "d3c3d0a9-c22e-4222-a997-f1b6fc2138a4"
		},
		"4c1a82b1-cd07-4a4b-b286-1948500caf88": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1102.5,
			"y": 122.125,
			"width": 100,
			"height": 60,
			"object": "f6710823-23b3-4534-a17e-9bd2ea67ffae"
		},
		"9862a953-4ded-4129-82d4-e5a99688db9c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1152.5,152.125 1152.5,282.8125 1180.5,282.8125 1180.5,400.5",
			"sourceSymbol": "4c1a82b1-cd07-4a4b-b286-1948500caf88",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "6eec2b01-3d78-44fb-912b-4288cacd3c38"
		},
		"9011667d-6ebf-4f08-9ced-91476cf03d0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 866.25,
			"y": 296.125,
			"width": 100,
			"height": 60,
			"object": "7de6e83e-93b2-4a44-bf69-523d24cf8a6e"
		},
		"9f8ae203-6582-48af-a688-7972156e62cb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "756.25,285 756.25,217.875 774.25,217.875 774.25,171.25",
			"sourceSymbol": "58e619c8-7875-48ad-aae0-c3acfe2a7a34",
			"targetSymbol": "db920753-bcf7-453a-95c0-ca3f149c7e1d",
			"object": "d3f4ff78-2843-4037-9887-36da20f4453b"
		},
		"893b4fd9-3330-4c98-ac58-f5550dfd2e30": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "759,285 916.25,285 916.25,296.625",
			"sourceSymbol": "58e619c8-7875-48ad-aae0-c3acfe2a7a34",
			"targetSymbol": "9011667d-6ebf-4f08-9ced-91476cf03d0a",
			"object": "2780c100-853e-4291-90e5-c2a3df142979"
		},
		"4e58caba-0b35-43a4-b5bb-6c4670d202bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "916.25,326.125 1064.875,326.125 1064.875,400.5 1180.5,400.5",
			"sourceSymbol": "9011667d-6ebf-4f08-9ced-91476cf03d0a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "0c9b2892-83f0-4324-a12a-a0e89abf7397"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 16,
			"startevent": 1,
			"intermediatetimerevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 3,
			"scripttask": 2,
			"mailtask": 1,
			"exclusivegateway": 3
		},
		"cb7faa22-c5f5-4b35-8503-fe2262abb5f2": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "marios-christos.stamatiou@consolut.com",
			"subject": "Rejection",
			"text": "Declined",
			"id": "maildefinition1"
		}
	}
}