; extends

;; Additional captures to refine Angular template highlighting

(binding_name
  (identifier) @keyword.angular.binding)

(binding_name
  (member_expression
    object: (identifier) @keyword.angular.binding))

(binding_name
  (member_expression
    property: (identifier) @keyword.angular.binding))

(event_binding
  (binding_name
    (identifier) @keyword.angular.binding))

(event_binding
  (binding_name
    (member_expression
      object: (identifier) @keyword.angular.binding)))

(event_binding
  (binding_name
    (member_expression
      property: (identifier) @keyword.angular.binding)))

((identifier) @keyword.angular.control
  (#any-of? @keyword.angular.control "for" "of" "track" "let"))
