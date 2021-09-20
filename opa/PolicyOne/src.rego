# @title Policy One prevents all deployments
# 
# This is a more descriptive explanation about
# Policy One. This policy will always fail
#
# @enforcement deny
# @kinds core/pods core/statefulsets core/deployments

package patpicos.opa.PolicyOne

violation[{"msg": msg}] {
  # Always raise a violation
  1 == 1

  msg := "This policy will always raise an exception"
}
