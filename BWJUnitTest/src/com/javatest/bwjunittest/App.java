package com.javatest.bwjunittest;

import org.junit.Test;
import static io.restassured.RestAssured.given;
import org.hamcrest.Matchers;
import io.restassured.http.ContentType;
import io.restassured.response.Response;



public class App 
{
final static String ROOT_URI = "http://localhost:12001/books";
	
	@Test
	public void post_test() {
		Response response = given().
				contentType(ContentType.JSON)
				.accept(ContentType.JSON)
				.body("{  \"Book\": [    {      \"isbn\": \"0061122476\",      \"name\": \"The Alchemist2\",      \"description\": \"Ever book\",      \"authorName\": \"Paul Coelho\",      \"releaseDate\": \"2006-04-25\",      \"vintage\": true,      \"signed\": true,      \"price\": 11.9    } ]  }")   
				.when()
				.post(ROOT_URI);
		System.out.println("POST Response\n" +  response.asString());
		 
		//response.then().body("isbn", Matchers.any(Integer.class));
		response.then().body(Matchers.containsString("0061122472"));
	
	}
}
