# @title Policy Two prevents nothing
# 
# This is a more descriptive explanation about
# Policy two. This policy will never fail.
#
# @enforcement deny
# @kinds core/pods core/statefulsets core/deployments
# @parameter dummy array string

package patpicos.opa.PolicyTwo

violation[{"msg": msg}] {
  # Always raise a violation
  1 == 0

  msg := "This policy will never raise an exception"
}
