const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "bradsocialmedia": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://z23h6pmifrfujndhmd6xj5dbcq.appsync-api.us-east-2.amazonaws.com/graphql",
                    "region": "us-east-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-3t74gfac3vbt3ewjsbxxhn2bga"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://z23h6pmifrfujndhmd6xj5dbcq.appsync-api.us-east-2.amazonaws.com/graphql",
                        "Region": "us-east-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-3t74gfac3vbt3ewjsbxxhn2bga",
                        "ClientDatabasePrefix": "bradsocialmedia_API_KEY"
                    },
                    "bradsocialmedia_AWS_IAM": {
                        "ApiUrl": "https://z23h6pmifrfujndhmd6xj5dbcq.appsync-api.us-east-2.amazonaws.com/graphql",
                        "Region": "us-east-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "bradsocialmedia_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-east-2:4cb11c75-d483-4c59-b50c-c01c0226e565",
                            "Region": "us-east-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-2_lmBCODae2",
                        "AppClientId": "4eultm2sh82ci7i4m28u6h8a80",
                        "Region": "us-east-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                }
            }
        }
    }
}''';