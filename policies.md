# Policies

## Violations

* [Policy One prevents all deployments](#policy-one-prevents-all-deployments)
* [Policy Two prevents nothing](#policy-two-prevents-nothing)

## Policy One prevents all deployments

**Severity:** Violation

**Resources:** core/pods core/statefulsets core/deployments

This is a more descriptive explanation about
Policy One. This policy will always fail


_source: [opa/PolicyOne](opa/PolicyOne)_

## Policy Two prevents nothing

**Severity:** Violation

**Resources:** core/pods core/statefulsets core/deployments

**Parameters:**

* dummy: array of string


This is a more descriptive explanation about
Policy two. This policy will never fail.


_source: [opa/PolicyTwo](opa/PolicyTwo)_
