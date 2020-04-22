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
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int) {
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

        public var id: Int {
          get {
            return resultMap["id"]! as! Int
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
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int) {
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

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
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
    mutation createPost($description: String!, $photo: bytea!, $user: String!) {
      insert_Post(objects: {description: $description, photo: $photo, user: $user}) {
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
      GraphQLField("insert_Post", arguments: ["objects": ["description": GraphQLVariable("description"), "photo": GraphQLVariable("photo"), "user": GraphQLVariable("user")]], type: .object(InsertPost.selections)),
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
