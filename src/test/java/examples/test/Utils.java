package examples.test;

import java.util.Collections;
import java.util.Map;

public class Utils {

    public static Map greet(String name) {
        String message = "Hello " + name;
        return Collections.singletonMap("message", message);
    }

}
