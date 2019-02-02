/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct ParentDepartment : Codable {
	let iD : Int?
	let title : String?
	let titleEN : String?
	let titleAR : String?
	let imageSrc : String?
	let brief : String?
	let briefEN : String?
	let briefAR : String?
	let briefTrimmed : String?
	let briefTrimmedEN : String?
	let briefTrimmedAR : String?

	enum CodingKeys: String, CodingKey {

		case iD = "ID"
		case title = "Title"
		case titleEN = "TitleEN"
		case titleAR = "TitleAR"
		case imageSrc = "ImageSrc"
		case brief = "Brief"
		case briefEN = "BriefEN"
		case briefAR = "BriefAR"
		case briefTrimmed = "BriefTrimmed"
		case briefTrimmedEN = "BriefTrimmedEN"
		case briefTrimmedAR = "BriefTrimmedAR"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        iD = try values.decodeIfPresent(Int.self, forKey: .iD)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        titleEN = try values.decodeIfPresent(String.self, forKey: .titleEN)
        titleAR = try values.decodeIfPresent(String.self, forKey: .titleAR)
        imageSrc = try values.decodeIfPresent(String.self, forKey: .imageSrc)
        brief = try values.decodeIfPresent(String.self, forKey: .brief)
        briefEN = try values.decodeIfPresent(String.self, forKey: .briefEN)
        briefAR = try values.decodeIfPresent(String.self, forKey: .briefAR)
        briefTrimmed = try values.decodeIfPresent(String.self, forKey: .briefTrimmed)
        briefTrimmedEN = try values.decodeIfPresent(String.self, forKey: .briefTrimmedEN)
        briefTrimmedAR = try values.decodeIfPresent(String.self, forKey: .briefTrimmedAR)
	}

}
