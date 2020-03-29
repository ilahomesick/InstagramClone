// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class SignUpUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation signUpUser($username: String!, $password: String!, $email: String!) {
      signUp(fields: {username: $username, password: $password, email: $email}) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "signUpUser"

  public var username: String
  public var password: String
  public var email: String

  public init(username: String, password: String, email: String) {
    self.username = username
    self.password = password
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password, "email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("signUp", arguments: ["fields": ["username": GraphQLVariable("username"), "password": GraphQLVariable("password"), "email": GraphQLVariable("email")]], type: .nonNull(.object(SignUp.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(signUp: SignUp) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "signUp": signUp.resultMap])
    }

    /// The signUp mutation can be used to sign the user up.
    public var signUp: SignUp {
      get {
        return SignUp(unsafeResultMap: resultMap["signUp"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "signUp")
      }
    }

    public struct SignUp: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// This is the object id.
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class LogInUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation logInUser($username: String!, $password: String!) {
      logIn(fields: {username: $username, password: $password}) {
        __typename
        sessionToken
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
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("logIn", arguments: ["fields": ["username": GraphQLVariable("username"), "password": GraphQLVariable("password")]], type: .nonNull(.object(LogIn.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(logIn: LogIn) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "logIn": logIn.resultMap])
    }

    /// The logIn mutation can be used to log the user in.
    public var logIn: LogIn {
      get {
        return LogIn(unsafeResultMap: resultMap["logIn"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "logIn")
      }
    }

    public struct LogIn: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("sessionToken", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(sessionToken: String) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "sessionToken": sessionToken])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The user session token
      public var sessionToken: String {
        get {
          return resultMap["sessionToken"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sessionToken")
        }
      }
    }
  }
}

public final class LogOutUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation logOutUser {
      logOut {
        __typename
        id
      }
    }
    """

  public let operationName: String = "logOutUser"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("logOut", type: .nonNull(.object(LogOut.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(logOut: LogOut) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "logOut": logOut.resultMap])
    }

    /// The logOut mutation can be used to log the user out.
    public var logOut: LogOut {
      get {
        return LogOut(unsafeResultMap: resultMap["logOut"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "logOut")
      }
    }

    public struct LogOut: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// This is the object id.
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}
