# OCP loadbalance sample demo 

[![asciicast](https://asciinema.org/a/90122.png)](https://asciinema.org/a/90122)

1. Create the app :

  ```
  oc new-app https://github.com/samueltauil/loadbalance
  ```
  
2. Expose the route:

  ```
  oc expose svc loadbalance
  ```

3. Take a note of the route URL:

  ```
  oc get routes
  ```

4. Scale up the pods:

  ```
  oc scale --replicas=5 dc/loadbalance
  ```

5. Show hostnames from pods:

  ```shell
  for x in {0..4}; do curl <route_url>; done
  ```
