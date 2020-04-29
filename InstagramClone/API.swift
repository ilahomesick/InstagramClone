// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class SignUpUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation signUpUser($username: String!, $password: String!, $email: String) {
      insert_User(objects: {username: $username, password: $password, email: $email}) {
        __typename
        returning {
          __typename
          id
        }
      }
    }
    """

  public let operationName: String = "signUpUser"

  public var username: String
  public var password: String
  public var email: String?

  public init(username: String, password: String, email: String? = nil) {
    self.username = username
    self.password = password
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password, "email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["mutation_root"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insert_User", arguments: ["objects": ["username": GraphQLVariable("username"), "password": GraphQLVariable("password"), "email": GraphQLVariable("email")]], type: .object(InsertUser.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertUser: InsertUser? = nil) {
      self.init(unsafeResultMap: ["__typename": "mutation_root", "insert_User": insertUser.flatMap { (value: InsertUser) -> ResultMap in value.resultMap }])
    }

    /// insert data into the table: "User"
    public var insertUser: InsertUser? {
      get {
        return (resultMap["insert_User"] as? ResultMap).flatMap { InsertUser(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "insert_User")
      }
    }

    public struct InsertUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User_mutation_response"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("returning", type: .nonNull(.list(.nonNull(.object(Returning.selections))))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(returning: [Returning]) {
        self.init(unsafeResultMap: ["__typename": "User_mutation_response", "returning": returning.map { (value: Returning) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// data of the affected rows by the mutation
      public var returning: [Returning] {
        get {
          return (resultMap["returning"] as! [ResultMap]).map { (value: ResultMap) -> Returning in Returning(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Returning) -> ResultMap in value.resultMap }, forKey: "returning")
        }
      }

      public struct Returning: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class LogInUserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query logInUser($username: String!, $password: String!) {
      User(where: {username: {_eq: $username}, password: {_eq: $password}}) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "logInUser"

  public var username: String
  public var password: String

  public init(username: String, password: String) {
    self.username = username
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("User", arguments: ["where": ["username": ["_eq": GraphQLVariable("username")], "password": ["_eq": GraphQLVariable("password")]]], type: .nonNull(.list(.nonNull(.object(User.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(user: [User]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "User": user.map { (value: User) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "User"
    public var user: [User] {
      get {
        return (resultMap["User"] as! [ResultMap]).map { (value: ResultMap) -> User in User(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: User) -> ResultMap in value.resultMap }, forKey: "User")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class CreatePostMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createPost($description: String!, $photo: String!, $user: String!) {
      insert_Post(objects: {description: $description, imageUrl: $photo, user: $user}) {
        __typename
        returning {
          __typename
          id
        }
      }
    }
    """

  public let operationName: String = "createPost"

  public var description: String
  public var photo: String
  public var user: String

  public init(description: String, photo: String, user: String) {
    self.description = description
    self.photo = photo
    self.user = user
  }

  public var variables: GraphQLMap? {
    return ["description": description, "photo": photo, "user": user]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["mutation_root"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insert_Post", arguments: ["objects": ["description": GraphQLVariable("description"), "imageUrl": GraphQLVariable("photo"), "user": GraphQLVariable("user")]], type: .object(InsertPost.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertPost: InsertPost? = nil) {
      self.init(unsafeResultMap: ["__typename": "mutation_root", "insert_Post": insertPost.flatMap { (value: InsertPost) -> ResultMap in value.resultMap }])
    }

    /// insert data into the table: "Post"
    public var insertPost: InsertPost? {
      get {
        return (resultMap["insert_Post"] as? ResultMap).flatMap { InsertPost(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "insert_Post")
      }
    }

    public struct InsertPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Post_mutation_response"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("returning", type: .nonNull(.list(.nonNull(.object(Returning.selections))))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(returning: [Returning]) {
        self.init(unsafeResultMap: ["__typename": "Post_mutation_response", "returning": returning.map { (value: Returning) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// data of the affected rows by the mutation
      public var returning: [Returning] {
        get {
          return (resultMap["returning"] as! [ResultMap]).map { (value: ResultMap) -> Returning in Returning(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Returning) -> ResultMap in value.resultMap }, forKey: "returning")
        }
      }

      public struct Returning: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String) {
          self.init(unsafeResultMap: ["__typename": "Post", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class RetrievePostQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query retrievePost($username: String) {
      Post(where: {user: {_eq: $username}}) {
        __typename
        imageUrl
        description
        date
        user
      }
    }
    """

  public let operationName: String = "retrievePost"

  public var username: String?

  public init(username: String? = nil) {
    self.username = username
  }

  public var variables: GraphQLMap? {
    return ["username": username]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("Post", arguments: ["where": ["user": ["_eq": GraphQLVariable("username")]]], type: .nonNull(.list(.nonNull(.object(Post.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(post: [Post]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "Post": post.map { (value: Post) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "Post"
    public var post: [Post] {
      get {
        return (resultMap["Post"] as! [ResultMap]).map { (value: ResultMap) -> Post in Post(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Post) -> ResultMap in value.resultMap }, forKey: "Post")
      }
    }

    public struct Post: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageUrl", type: .scalar(String.self)),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(imageUrl: String? = nil, description: String, date: String, user: String) {
        self.init(unsafeResultMap: ["__typename": "Post", "imageUrl": imageUrl, "description": description, "date": date, "user": user])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var description: String {
        get {
          return resultMap["description"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var date: String {
        get {
          return resultMap["date"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "date")
        }
      }

      public var user: String {
        get {
          return resultMap["user"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "user")
        }
      }
    }
  }
}

public final class RetrieveFollowersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query retrieveFollowers($username: String) {
      followings(where: {followee: {_eq: $username}}) {
        __typename
        follower
      }
    }
    """

  public let operationName: String = "retrieveFollowers"

  public var username: String?

  public init(username: String? = nil) {
    self.username = username
  }

  public var variables: GraphQLMap? {
    return ["username": username]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("followings", arguments: ["where": ["followee": ["_eq": GraphQLVariable("username")]]], type: .nonNull(.list(.nonNull(.object(Following.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(followings: [Following]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "followings": followings.map { (value: Following) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "followings"
    public var followings: [Following] {
      get {
        return (resultMap["followings"] as! [ResultMap]).map { (value: ResultMap) -> Following in Following(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Following) -> ResultMap in value.resultMap }, forKey: "followings")
      }
    }

    public struct Following: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["followings"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("follower", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(follower: String) {
        self.init(unsafeResultMap: ["__typename": "followings", "follower": follower])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var follower: String {
        get {
          return resultMap["follower"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "follower")
        }
      }
    }
  }
}
