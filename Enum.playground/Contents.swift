import UIKit

enum SocailPlatform: CaseIterable {
    case faceBook
    case instagram
    case linkedIn
    case twitter
}
//Ex:baisc without type
func shareImage(on platfrom: SocailPlatform){
    switch platfrom {

    case .faceBook:
        print("I am not using facebook")
    case .instagram:
        print("I am not using instagram")
    case .linkedIn:
        print("I am using LinkedIn")
    case .twitter:
        print("I am not using twitter")
    }
}
shareImage(on: .instagram)

//Ex: with specific type
enum SocailPlatformType: String, CaseIterable {
    case faceBook = "FaceBook is here"
    case instagram = "Instagram is here"
    case linkedIns = "LinkedIn not here"
    case twitter = "twitter is not here"
}

func getMyOpinon(on platfrom: SocailPlatformType){
    let getPlafromDetails = platfrom.rawValue
    print("My Opinon",(getPlafromDetails))
}

getMyOpinon(on: .instagram)

//Ex: CaseIterable
print(SocailPlatformType.allCases.count)

for platfrom in SocailPlatform.allCases {
    print(platfrom.hashValue)
}

for platfrom in SocailPlatformType.allCases {
    print(platfrom.rawValue)
}

for platfrom in SocailPlatformType.allCases {
    print(platfrom)
}




enum SocailMediaPlatform {
    case youtube(subscribers: Int)
    case instagram(followers: Int)
    case linkedIns
    case facebook
}

func getSocailMediaPlaform(on platform: SocailMediaPlatform){
    switch platform {
    case .youtube(subscribers: let subscribers) where subscribers > 10_000:
        print("Youtube subscribers is getter than 10000 ")
    case .instagram(followers: let followers) where followers > 5_00:
        print("Instagram followers is getter than 500 ")
    case .linkedIns , .facebook, .youtube, .instagram:
        print("No followers of linkedIns  and  facebook")
    }
}

getSocailMediaPlaform(on: .youtube(subscribers: 15_000))
getSocailMediaPlaform(on: .facebook)
