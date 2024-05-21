@IsTest(SeeAllData = true)
public with sharing class LightningLoginFormControllerTest {

 @IsTest
 static void LightningLoginFormControllerInstantiation() {
  LightningLoginFormController controller = new LightningLoginFormController();
  System.assertNotEquals(controller, null);
 }

 @IsTest
 static void testIsUsernamePasswordEnabled() {
  System.assertEquals(true, LightningLoginFormController.getIsUsernamePasswordEnabled());
 }

 @IsTest
 static void testIsSelfRegistrationEnabled() {
  System.assertEquals(false, LightningLoginFormController.getIsSelfRegistrationEnabled());
 }

 @IsTest
 static void testGetSelfRegistrationURL() {
  System.assertEquals(null, LightningLoginFormController.getSelfRegistrationUrl());
 }

 @IsTest
 static void testAuthConfig() {
  Auth.AuthConfiguration authConfig = LightningLoginFormController.getAuthConfig();
  System.assertNotEquals(null, authConfig);
 }
    
    @IsTest
static void testLoginSuccess() {
    // Setup test data
    String username = 'test@example.com';
    String password = 'correctPassword';
    String startUrl = '/home';
    
    // Call the method under test
    String result = LightningLoginFormController.login(username, password, startUrl);
    
    // Assert that no error messages are returned for successful login
    System.assertEquals(null, result, 'Login should succeed without errors.');
}

    @IsTest
    static void testLoginFailure() {
        // Setup test data with incorrect credentials
        String username = 'test@example.com';
        String password = 'wrongPassword';
        String startUrl = '/home';
    }

    @IsTest
    static void testSetExperienceIdSuccess() {
        // Setup test data
        String expId = 'someExperienceId';
        
        String result = LightningLoginFormController.setExperienceId(expId);
    }
    
    @IsTest
    static void testSetExperienceIdFailure() {
        String expId = 'invalidExperienceId';
    }
}