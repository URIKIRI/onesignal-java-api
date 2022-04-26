# onesignal-java-client

OneSignal
- API version: 1.0.2
  - Build date: 2022-04-26T05:37:43.612Z[Etc/UTC]

A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

  For more information, please visit [https://onesignal.com](https://onesignal.com)

*Automatically generated by the [OpenAPI Generator](https://openapi-generator.tech)*


## Requirements

Building the API client library requires:
1. Java 1.8+
2. Maven (3.8.3+)/Gradle (7.2+)

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn clean install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn clean deploy
```

Refer to the [OSSRH Guide](http://central.sonatype.org/pages/ossrh-guide.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
  <groupId>org.openapitools</groupId>
  <artifactId>onesignal-java-client</artifactId>
  <version>1.0.2</version>
  <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
  repositories {
    mavenCentral()     // Needed if the 'onesignal-java-client' jar has been published to maven central.
    mavenLocal()       // Needed if the 'onesignal-java-client' jar has been published to the local maven repo.
  }

  dependencies {
     implementation "org.openapitools:onesignal-java-client:1.0.2"
  }
```

### Others

At first generate the JAR by executing:

```shell
mvn clean package
```

Then manually install the following JARs:

* `target/onesignal-java-client-1.0.2.jar`
* `target/lib/*.jar`

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

// Import classes:
import com.onesignal.client.ApiClient;
import com.onesignal.client.ApiException;
import com.onesignal.client.Configuration;
import com.onesignal.client.auth.*;
import com.onesignal.client.models.*;
import com.onesignal.client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    // Define constants
    String appKeyToken = "YOUR_APP_KEY";
    String userKeyToken = "YOUR_USER_TOKEN";

    // Setting up the client
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    HttpBearerAuth appKey = (HttpBearerAuth) defaultClient.getAuthentication("app_key");
    appKey.setBearerToken(appKeyToken);
    HttpBearerAuth userKey = (HttpBearerAuth) defaultClient.getAuthentication("user_key");
    userKey.setBearerToken(userKeyToken);
    api = new DefaultApi(defaultClient);

    // Setting up the notification
    Notification notification = createNotification();

    // Sending the request
    InlineResponse200 response = api.createNotification(notification);

    // Checking the result
    System.out.print(response.getId();
  }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://onesignal.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**cancelNotification**](docs/DefaultApi.md#cancelNotification) | **DELETE** /notifications/{notification_id} | Stop a scheduled or currently outgoing notification
*DefaultApi* | [**createApp**](docs/DefaultApi.md#createApp) | **POST** /apps | Create an app
*DefaultApi* | [**createNotification**](docs/DefaultApi.md#createNotification) | **POST** /notifications | Create notification
*DefaultApi* | [**createPlayer**](docs/DefaultApi.md#createPlayer) | **POST** /players | Add a device
*DefaultApi* | [**createSegments**](docs/DefaultApi.md#createSegments) | **POST** /apps/{app_id}/segments | Create Segments
*DefaultApi* | [**deletePlayer**](docs/DefaultApi.md#deletePlayer) | **DELETE** /players/{player_id} | Delete a user record
*DefaultApi* | [**deleteSegments**](docs/DefaultApi.md#deleteSegments) | **DELETE** /apps/{app_id}/segments/{segment_id} | Delete Segments
*DefaultApi* | [**exportPlayers**](docs/DefaultApi.md#exportPlayers) | **POST** /players/csv_export?app_id&#x3D;{app_id} | CSV export
*DefaultApi* | [**getApp**](docs/DefaultApi.md#getApp) | **GET** /apps/{app_id} | View an app
*DefaultApi* | [**getApps**](docs/DefaultApi.md#getApps) | **GET** /apps | View apps
*DefaultApi* | [**getNotification**](docs/DefaultApi.md#getNotification) | **GET** /notifications/{notification_id} | View notification
*DefaultApi* | [**getNotificationHistory**](docs/DefaultApi.md#getNotificationHistory) | **POST** /notifications/{notification_id}/history | Notification History
*DefaultApi* | [**getNotifications**](docs/DefaultApi.md#getNotifications) | **GET** /notifications | View notifications
*DefaultApi* | [**getOutcomes**](docs/DefaultApi.md#getOutcomes) | **GET** /apps/{app_id}/outcomes | View Outcomes
*DefaultApi* | [**getPlayer**](docs/DefaultApi.md#getPlayer) | **GET** /players/{player_id} | View device
*DefaultApi* | [**getPlayers**](docs/DefaultApi.md#getPlayers) | **GET** /players | View devices
*DefaultApi* | [**updateApp**](docs/DefaultApi.md#updateApp) | **PUT** /apps/{app_id} | Update an app
*DefaultApi* | [**updatePlayer**](docs/DefaultApi.md#updatePlayer) | **PUT** /players/{player_id} | Edit device
*DefaultApi* | [**updatePlayerTags**](docs/DefaultApi.md#updatePlayerTags) | **PUT** /apps/{app_id}/users/{external_user_id} | Edit tags with external user id


## Documentation for Models

 - [App](docs/App.md)
 - [Button](docs/Button.md)
 - [DeliveryData](docs/DeliveryData.md)
 - [ExportPlayersRequestBody](docs/ExportPlayersRequestBody.md)
 - [Filter](docs/Filter.md)
 - [FilterExpressions](docs/FilterExpressions.md)
 - [FilterNotificationTarget](docs/FilterNotificationTarget.md)
 - [GetNotificationRequestBody](docs/GetNotificationRequestBody.md)
 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse2001](docs/InlineResponse2001.md)
 - [InlineResponse2002](docs/InlineResponse2002.md)
 - [InlineResponse2003](docs/InlineResponse2003.md)
 - [InlineResponse2004](docs/InlineResponse2004.md)
 - [InlineResponse2005](docs/InlineResponse2005.md)
 - [InlineResponse201](docs/InlineResponse201.md)
 - [InlineResponse400](docs/InlineResponse400.md)
 - [InlineResponse4001](docs/InlineResponse4001.md)
 - [InlineResponse4002](docs/InlineResponse4002.md)
 - [InlineResponse4003](docs/InlineResponse4003.md)
 - [InvalidIdentifierError](docs/InvalidIdentifierError.md)
 - [Notification](docs/Notification.md)
 - [Notification200Errors](docs/Notification200Errors.md)
 - [NotificationAllOf](docs/NotificationAllOf.md)
 - [NotificationAllOfAndroidBackgroundLayout](docs/NotificationAllOfAndroidBackgroundLayout.md)
 - [NotificationSlice](docs/NotificationSlice.md)
 - [NotificationTarget](docs/NotificationTarget.md)
 - [Operator](docs/Operator.md)
 - [OutcomeData](docs/OutcomeData.md)
 - [OutcomesData](docs/OutcomesData.md)
 - [PlatformDeliveryData](docs/PlatformDeliveryData.md)
 - [Player](docs/Player.md)
 - [PlayerNotificationTarget](docs/PlayerNotificationTarget.md)
 - [PlayerSlice](docs/PlayerSlice.md)
 - [Purchase](docs/Purchase.md)
 - [Segment](docs/Segment.md)
 - [SegmentNotificationTarget](docs/SegmentNotificationTarget.md)
 - [StringMap](docs/StringMap.md)
 - [UpdatePlayerTagsRequestBody](docs/UpdatePlayerTagsRequestBody.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### app_key

- **Type**: HTTP basic authentication

### user_key

- **Type**: HTTP basic authentication


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

devrel@onesignal.com

