/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct SubServices : Codable {
	let iD : Int?
	let title : String?
	let titleEN : String?
	let titleAR : String?
	let titleTrimmed : String?
	let titleTrimmedEN : String?
	let titleTrimmedAR : String?
	let parentDepartment : ParentDepartment?
	let parentServiceID : String?
	let parentService : String?
	let parentServiceEN : String?
	let parentServiceAR : String?
	let brief : String?
	let briefEN : String?
	let briefAR : String?
	let briefTrimmed : String?
	let briefTrimmedEN : String?
	let briefTrimmedAR : String?
	let description : String?
	let descriptionEN : String?
	let descriptionAR : String?
	let prerequisites : String?
	let prerequisitesEN : String?
	let prerequisitesAR : String?
	let requiredDocuments : String?
	let requiredDocumentsEN : String?
	let requiredDocumentsAR : String?
	let fees : String?
	let feesEN : String?
	let feesAR : String?
	let timeFrame : String?
	let timeFrameEN : String?
	let timeFrameAR : String?
	let serviceChannels : String?
	let serviceChannelsEN : String?
	let serviceChannelsAR : String?
	let policiesAndProcedures : String?
	let policiesAndProceduresEN : String?
	let policiesAndProceduresAR : String?
	let eServiceRequestURL : String?
	let eServiceRequestURLEN : String?
	let eServiceRequestURLAR : String?
	let eServiceRequestFullURL : String?
	let videoID : String?
	let imageSrc : String?
	let mobileImageSrc : String?
	let detailsURL : String?
	let assistingDocumentURL : [AssistingDocumentURL]?
	let subServices : String?
	let hasSubServices : Bool?

	enum CodingKeys: String, CodingKey {

		case iD = "ID"
		case title = "Title"
		case titleEN = "TitleEN"
		case titleAR = "TitleAR"
		case titleTrimmed = "TitleTrimmed"
		case titleTrimmedEN = "TitleTrimmedEN"
		case titleTrimmedAR = "TitleTrimmedAR"
		case parentDepartment = "ParentDepartment"
		case parentServiceID = "ParentServiceID"
		case parentService = "ParentService"
		case parentServiceEN = "ParentServiceEN"
		case parentServiceAR = "ParentServiceAR"
		case brief = "Brief"
		case briefEN = "BriefEN"
		case briefAR = "BriefAR"
		case briefTrimmed = "BriefTrimmed"
		case briefTrimmedEN = "BriefTrimmedEN"
		case briefTrimmedAR = "BriefTrimmedAR"
		case description = "Description"
		case descriptionEN = "DescriptionEN"
		case descriptionAR = "DescriptionAR"
		case prerequisites = "Prerequisites"
		case prerequisitesEN = "PrerequisitesEN"
		case prerequisitesAR = "PrerequisitesAR"
		case requiredDocuments = "RequiredDocuments"
		case requiredDocumentsEN = "RequiredDocumentsEN"
		case requiredDocumentsAR = "RequiredDocumentsAR"
		case fees = "Fees"
		case feesEN = "FeesEN"
		case feesAR = "FeesAR"
		case timeFrame = "TimeFrame"
		case timeFrameEN = "TimeFrameEN"
		case timeFrameAR = "TimeFrameAR"
		case serviceChannels = "ServiceChannels"
		case serviceChannelsEN = "ServiceChannelsEN"
		case serviceChannelsAR = "ServiceChannelsAR"
		case policiesAndProcedures = "PoliciesAndProcedures"
		case policiesAndProceduresEN = "PoliciesAndProceduresEN"
		case policiesAndProceduresAR = "PoliciesAndProceduresAR"
		case eServiceRequestURL = "EServiceRequestURL"
		case eServiceRequestURLEN = "EServiceRequestURLEN"
		case eServiceRequestURLAR = "EServiceRequestURLAR"
		case eServiceRequestFullURL = "EServiceRequestFullURL"
		case videoID = "VideoID"
		case imageSrc = "ImageSrc"
		case mobileImageSrc = "MobileImageSrc"
		case detailsURL = "DetailsURL"
		case assistingDocumentURL = "AssistingDocumentURL"
		case subServices = "subServices"
		case hasSubServices = "hasSubServices"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		iD = try values.decodeIfPresent(Int.self, forKey: .iD)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		titleEN = try values.decodeIfPresent(String.self, forKey: .titleEN)
		titleAR = try values.decodeIfPresent(String.self, forKey: .titleAR)
		titleTrimmed = try values.decodeIfPresent(String.self, forKey: .titleTrimmed)
		titleTrimmedEN = try values.decodeIfPresent(String.self, forKey: .titleTrimmedEN)
		titleTrimmedAR = try values.decodeIfPresent(String.self, forKey: .titleTrimmedAR)
		parentDepartment = try values.decodeIfPresent(ParentDepartment.self, forKey: .parentDepartment)
		parentServiceID = try values.decodeIfPresent(String.self, forKey: .parentServiceID)
		parentService = try values.decodeIfPresent(String.self, forKey: .parentService)
		parentServiceEN = try values.decodeIfPresent(String.self, forKey: .parentServiceEN)
		parentServiceAR = try values.decodeIfPresent(String.self, forKey: .parentServiceAR)
		brief = try values.decodeIfPresent(String.self, forKey: .brief)
		briefEN = try values.decodeIfPresent(String.self, forKey: .briefEN)
		briefAR = try values.decodeIfPresent(String.self, forKey: .briefAR)
		briefTrimmed = try values.decodeIfPresent(String.self, forKey: .briefTrimmed)
		briefTrimmedEN = try values.decodeIfPresent(String.self, forKey: .briefTrimmedEN)
		briefTrimmedAR = try values.decodeIfPresent(String.self, forKey: .briefTrimmedAR)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		descriptionEN = try values.decodeIfPresent(String.self, forKey: .descriptionEN)
		descriptionAR = try values.decodeIfPresent(String.self, forKey: .descriptionAR)
		prerequisites = try values.decodeIfPresent(String.self, forKey: .prerequisites)
		prerequisitesEN = try values.decodeIfPresent(String.self, forKey: .prerequisitesEN)
		prerequisitesAR = try values.decodeIfPresent(String.self, forKey: .prerequisitesAR)
		requiredDocuments = try values.decodeIfPresent(String.self, forKey: .requiredDocuments)
		requiredDocumentsEN = try values.decodeIfPresent(String.self, forKey: .requiredDocumentsEN)
		requiredDocumentsAR = try values.decodeIfPresent(String.self, forKey: .requiredDocumentsAR)
		fees = try values.decodeIfPresent(String.self, forKey: .fees)
		feesEN = try values.decodeIfPresent(String.self, forKey: .feesEN)
		feesAR = try values.decodeIfPresent(String.self, forKey: .feesAR)
		timeFrame = try values.decodeIfPresent(String.self, forKey: .timeFrame)
		timeFrameEN = try values.decodeIfPresent(String.self, forKey: .timeFrameEN)
		timeFrameAR = try values.decodeIfPresent(String.self, forKey: .timeFrameAR)
		serviceChannels = try values.decodeIfPresent(String.self, forKey: .serviceChannels)
		serviceChannelsEN = try values.decodeIfPresent(String.self, forKey: .serviceChannelsEN)
		serviceChannelsAR = try values.decodeIfPresent(String.self, forKey: .serviceChannelsAR)
		policiesAndProcedures = try values.decodeIfPresent(String.self, forKey: .policiesAndProcedures)
		policiesAndProceduresEN = try values.decodeIfPresent(String.self, forKey: .policiesAndProceduresEN)
		policiesAndProceduresAR = try values.decodeIfPresent(String.self, forKey: .policiesAndProceduresAR)
		eServiceRequestURL = try values.decodeIfPresent(String.self, forKey: .eServiceRequestURL)
		eServiceRequestURLEN = try values.decodeIfPresent(String.self, forKey: .eServiceRequestURLEN)
		eServiceRequestURLAR = try values.decodeIfPresent(String.self, forKey: .eServiceRequestURLAR)
		eServiceRequestFullURL = try values.decodeIfPresent(String.self, forKey: .eServiceRequestFullURL)
		videoID = try values.decodeIfPresent(String.self, forKey: .videoID)
		imageSrc = try values.decodeIfPresent(String.self, forKey: .imageSrc)
		mobileImageSrc = try values.decodeIfPresent(String.self, forKey: .mobileImageSrc)
		detailsURL = try values.decodeIfPresent(String.self, forKey: .detailsURL)
		assistingDocumentURL = try values.decodeIfPresent([AssistingDocumentURL].self, forKey: .assistingDocumentURL)
		subServices = try values.decodeIfPresent(String.self, forKey: .subServices)
		hasSubServices = try values.decodeIfPresent(Bool.self, forKey: .hasSubServices)
	}

}
