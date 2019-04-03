package Paws::STS;
  use Moose;
  sub service { 'sts' }
  sub signing_name { 'sts' }
  sub version { '2011-06-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'startsWith',
          'cn-'
        ]
      ],
      uri => '{scheme}://{service}.{region}.amazonaws.com.cn'
    },
    {
      constraints => [
        [
          'region',
          'startsWith',
          'us-gov'
        ]
      ],
      uri => 'https://{service}.{region}.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'equals',
          undef
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => 'https://sts.amazonaws.com'
    },
    {
      uri => 'https://{service}.{region}.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AssumeRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::AssumeRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeRoleWithSAML {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::AssumeRoleWithSAML', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeRoleWithWebIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::AssumeRoleWithWebIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DecodeAuthorizationMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::DecodeAuthorizationMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCallerIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::GetCallerIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFederationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::GetFederationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSessionToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::GetSessionToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssumeRole AssumeRoleWithSAML AssumeRoleWithWebIdentity DecodeAuthorizationMessage GetCallerIdentity GetFederationToken GetSessionToken / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::STS - Perl Interface to AWS AWS Security Token Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('STS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Security Token Service

The AWS Security Token Service (STS) is a web service that enables you
to request temporary, limited-privilege credentials for AWS Identity
and Access Management (IAM) users or for users that you authenticate
(federated users). This guide provides descriptions of the STS API. For
more detailed information about using this service, go to Temporary
Security Credentials
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html).

As an alternative to using the API, you can use one of the AWS SDKs,
which consist of libraries and sample code for various programming
languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The
SDKs provide a convenient way to create programmatic access to STS. For
example, the SDKs take care of cryptographically signing requests,
managing errors, and retrying requests automatically. For information
about the AWS SDKs, including how to download and install them, see the
Tools for Amazon Web Services page (http://aws.amazon.com/tools/).

For information about setting up signatures and authorization through
the API, go to Signing AWS API Requests
(http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
in the I<AWS General Reference>. For general information about the
Query API, go to Making Query Requests
(http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
in I<Using IAM>. For information about using security tokens with other
AWS products, go to AWS Services That Work with IAM
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html)
in the I<IAM User Guide>.

If you're new to AWS and need additional technical information about a
specific AWS product, you can find the product's technical
documentation at http://aws.amazon.com/documentation/
(http://aws.amazon.com/documentation/).

B<Endpoints>

The AWS Security Token Service (STS) has a default endpoint of
https://sts.amazonaws.com that maps to the US East (N. Virginia)
region. Additional regions are available and are activated by default.
For more information, see Activating and Deactivating AWS STS in an AWS
Region
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<IAM User Guide>.

For information about STS endpoints, see Regions and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region) in
the I<AWS General Reference>.

B<Recording API requests>

STS supports AWS CloudTrail, which is a service that records AWS calls
for your AWS account and delivers log files to an Amazon S3 bucket. By
using information collected by CloudTrail, you can determine what
requests were successfully made to STS, who made the request, when it
was made, and so on. To learn more about CloudTrail, including how to
turn it on and find your log files, see the AWS CloudTrail User Guide
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/iam/>


=head1 METHODS

=head2 AssumeRole

=over

=item RoleArn => Str

=item RoleSessionName => Str

=item [DurationSeconds => Int]

=item [ExternalId => Str]

=item [Policy => Str]

=item [SerialNumber => Str]

=item [TokenCode => Str]


=back

Each argument is described in detail in: L<Paws::STS::AssumeRole>

Returns: a L<Paws::STS::AssumeRoleResponse> instance

Returns a set of temporary security credentials (consisting of an
access key ID, a secret access key, and a security token) that you can
use to access AWS resources that you might not normally have access to.
Typically, you use C<AssumeRole> for cross-account access or
federation. For a comparison of C<AssumeRole> with the other APIs that
produce temporary credentials, see Requesting Temporary Security
Credentials
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS APIs
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

B<Important:> You cannot call C<AssumeRole> by using AWS root account
credentials; access is denied. You must use credentials for an IAM user
or an IAM role to call C<AssumeRole>.

For cross-account access, imagine that you own multiple accounts and
need to access resources in each account. You could create long-term
credentials in each account to access those resources. However,
managing all those credentials and remembering which one can access
which account can be time consuming. Instead, you can create one set of
long-term credentials in one account and then use temporary security
credentials to access all the other accounts by assuming roles in those
accounts. For more information about roles, see IAM Roles (Delegation
and Federation)
(http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html)
in the I<IAM User Guide>.

For federation, you can, for example, grant single sign-on access to
the AWS Management Console. If you already have an identity and
authentication system in your corporate network, you don't have to
recreate user identities in AWS in order to grant those user identities
access to AWS. Instead, after a user has been authenticated, you call
C<AssumeRole> (and specify the role with the appropriate permissions)
to get temporary security credentials for that user. With those
temporary security credentials, you construct a sign-in URL that users
can use to access the console. For more information, see Common
Scenarios for Temporary Credentials
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html#sts-introduction)
in the I<IAM User Guide>.

By default, the temporary security credentials created by C<AssumeRole>
last for one hour. However, you can use the optional C<DurationSeconds>
parameter to specify the duration of your session. You can provide a
value from 900 seconds (15 minutes) up to the maximum session duration
setting for the role. This setting can have a value from 1 hour to 12
hours. To learn how to view the maximum value for your role, see View
the Maximum Session Duration Setting for a Role
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the I<IAM User Guide>. The maximum session duration limit applies
when you use the C<AssumeRole*> API operations or the C<assume-role*>
CLI operations but does not apply when you use those operations to
create a console URL. For more information, see Using IAM Roles
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in
the I<IAM User Guide>.

The temporary security credentials created by C<AssumeRole> can be used
to make API calls to any AWS service with the following exception: you
cannot call the STS service's C<GetFederationToken> or
C<GetSessionToken> APIs.

Optionally, you can pass an IAM access policy to this operation. If you
choose not to pass a policy, the temporary security credentials that
are returned by the operation have the permissions that are defined in
the access policy of the role that is being assumed. If you pass a
policy to this operation, the temporary security credentials that are
returned by the operation have the permissions that are allowed by both
the access policy of the role that is being assumed, I< B<and> > the
policy that you pass. This gives you a way to further restrict the
permissions for the resulting temporary security credentials. You
cannot use the passed policy to grant permissions that are in excess of
those allowed by the access policy of the role that is being assumed.
For more information, see Permissions for AssumeRole,
AssumeRoleWithSAML, and AssumeRoleWithWebIdentity
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html)
in the I<IAM User Guide>.

To assume a role, your AWS account must be trusted by the role. The
trust relationship is defined in the role's trust policy when the role
is created. That trust policy states which accounts are allowed to
delegate access to this account's role.

The user who wants to access the role must also have permissions
delegated from the role's administrator. If the user is in a different
account than the role, then the user's administrator must attach a
policy that allows the user to call AssumeRole on the ARN of the role
in the other account. If the user is in the same account as the role,
then you can either attach a policy to the user (identical to the
previous different account user), or you can add the user as a
principal directly in the role's trust policy. In this case, the trust
policy acts as the only resource-based policy in IAM, and users in the
same account as the role do not need explicit permission to assume the
role. For more information about trust policies and resource-based
policies, see IAM Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
in the I<IAM User Guide>.

B<Using MFA with AssumeRole>

You can optionally include multi-factor authentication (MFA)
information when you call C<AssumeRole>. This is useful for
cross-account scenarios in which you want to make sure that the user
who is assuming the role has been authenticated using an AWS MFA
device. In that scenario, the trust policy of the role being assumed
includes a condition that tests for MFA authentication; if the caller
does not include valid MFA information, the request to assume the role
is denied. The condition in a trust policy that tests for MFA
authentication might look like the following example.

C<"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}>

For more information, see Configuring MFA-Protected API Access
(http://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html)
in the I<IAM User Guide> guide.

To use MFA with C<AssumeRole>, you pass values for the C<SerialNumber>
and C<TokenCode> parameters. The C<SerialNumber> value identifies the
user's hardware or virtual MFA device. The C<TokenCode> is the
time-based one-time password (TOTP) that the MFA devices produces.


=head2 AssumeRoleWithSAML

=over

=item PrincipalArn => Str

=item RoleArn => Str

=item SAMLAssertion => Str

=item [DurationSeconds => Int]

=item [Policy => Str]


=back

Each argument is described in detail in: L<Paws::STS::AssumeRoleWithSAML>

Returns: a L<Paws::STS::AssumeRoleWithSAMLResponse> instance

Returns a set of temporary security credentials for users who have been
authenticated via a SAML authentication response. This operation
provides a mechanism for tying an enterprise identity store or
directory to role-based AWS access without user-specific credentials or
configuration. For a comparison of C<AssumeRoleWithSAML> with the other
APIs that produce temporary credentials, see Requesting Temporary
Security Credentials
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS APIs
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

The temporary security credentials returned by this operation consist
of an access key ID, a secret access key, and a security token.
Applications can use these temporary security credentials to sign calls
to AWS services.

By default, the temporary security credentials created by
C<AssumeRoleWithSAML> last for one hour. However, you can use the
optional C<DurationSeconds> parameter to specify the duration of your
session. Your role session lasts for the duration that you specify, or
until the time specified in the SAML authentication response's
C<SessionNotOnOrAfter> value, whichever is shorter. You can provide a
C<DurationSeconds> value from 900 seconds (15 minutes) up to the
maximum session duration setting for the role. This setting can have a
value from 1 hour to 12 hours. To learn how to view the maximum value
for your role, see View the Maximum Session Duration Setting for a Role
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the I<IAM User Guide>. The maximum session duration limit applies
when you use the C<AssumeRole*> API operations or the C<assume-role*>
CLI operations but does not apply when you use those operations to
create a console URL. For more information, see Using IAM Roles
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in
the I<IAM User Guide>.

The temporary security credentials created by C<AssumeRoleWithSAML> can
be used to make API calls to any AWS service with the following
exception: you cannot call the STS service's C<GetFederationToken> or
C<GetSessionToken> APIs.

Optionally, you can pass an IAM access policy to this operation. If you
choose not to pass a policy, the temporary security credentials that
are returned by the operation have the permissions that are defined in
the access policy of the role that is being assumed. If you pass a
policy to this operation, the temporary security credentials that are
returned by the operation have the permissions that are allowed by the
intersection of both the access policy of the role that is being
assumed, I< B<and> > the policy that you pass. This means that both
policies must grant the permission for the action to be allowed. This
gives you a way to further restrict the permissions for the resulting
temporary security credentials. You cannot use the passed policy to
grant permissions that are in excess of those allowed by the access
policy of the role that is being assumed. For more information, see
Permissions for AssumeRole, AssumeRoleWithSAML, and
AssumeRoleWithWebIdentity
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html)
in the I<IAM User Guide>.

Before your application can call C<AssumeRoleWithSAML>, you must
configure your SAML identity provider (IdP) to issue the claims
required by AWS. Additionally, you must use AWS Identity and Access
Management (IAM) to create a SAML provider entity in your AWS account
that represents your identity provider, and create an IAM role that
specifies this SAML provider in its trust policy.

Calling C<AssumeRoleWithSAML> does not require the use of AWS security
credentials. The identity of the caller is validated by using keys in
the metadata document that is uploaded for the SAML provider entity for
your identity provider.

Calling C<AssumeRoleWithSAML> can result in an entry in your AWS
CloudTrail logs. The entry includes the value in the C<NameID> element
of the SAML assertion. We recommend that you use a NameIDType that is
not associated with any personally identifiable information (PII). For
example, you could instead use the Persistent Identifier
(C<urn:oasis:names:tc:SAML:2.0:nameid-format:persistent>).

For more information, see the following resources:

=over

=item *

About SAML 2.0-based Federation
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html)
in the I<IAM User Guide>.

=item *

Creating SAML Identity Providers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html)
in the I<IAM User Guide>.

=item *

Configuring a Relying Party and Claims
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html)
in the I<IAM User Guide>.

=item *

Creating a Role for SAML 2.0 Federation
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html)
in the I<IAM User Guide>.

=back



=head2 AssumeRoleWithWebIdentity

=over

=item RoleArn => Str

=item RoleSessionName => Str

=item WebIdentityToken => Str

=item [DurationSeconds => Int]

=item [Policy => Str]

=item [ProviderId => Str]


=back

Each argument is described in detail in: L<Paws::STS::AssumeRoleWithWebIdentity>

Returns: a L<Paws::STS::AssumeRoleWithWebIdentityResponse> instance

Returns a set of temporary security credentials for users who have been
authenticated in a mobile or web application with a web identity
provider, such as Amazon Cognito, Login with Amazon, Facebook, Google,
or any OpenID Connect-compatible identity provider.

For mobile applications, we recommend that you use Amazon Cognito. You
can use Amazon Cognito with the AWS SDK for iOS
(http://aws.amazon.com/sdkforios/) and the AWS SDK for Android
(http://aws.amazon.com/sdkforandroid/) to uniquely identify a user and
supply the user with a consistent identity throughout the lifetime of
an application.

To learn more about Amazon Cognito, see Amazon Cognito Overview
(http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-auth.html#d0e840)
in the I<AWS SDK for Android Developer Guide> guide and Amazon Cognito
Overview
(http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-auth.html#d0e664)
in the I<AWS SDK for iOS Developer Guide>.

Calling C<AssumeRoleWithWebIdentity> does not require the use of AWS
security credentials. Therefore, you can distribute an application (for
example, on mobile devices) that requests temporary security
credentials without including long-term AWS credentials in the
application, and without deploying server-based proxy services that use
long-term AWS credentials. Instead, the identity of the caller is
validated by using a token from the web identity provider. For a
comparison of C<AssumeRoleWithWebIdentity> with the other APIs that
produce temporary credentials, see Requesting Temporary Security
Credentials
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS APIs
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

The temporary security credentials returned by this API consist of an
access key ID, a secret access key, and a security token. Applications
can use these temporary security credentials to sign calls to AWS
service APIs.

By default, the temporary security credentials created by
C<AssumeRoleWithWebIdentity> last for one hour. However, you can use
the optional C<DurationSeconds> parameter to specify the duration of
your session. You can provide a value from 900 seconds (15 minutes) up
to the maximum session duration setting for the role. This setting can
have a value from 1 hour to 12 hours. To learn how to view the maximum
value for your role, see View the Maximum Session Duration Setting for
a Role
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the I<IAM User Guide>. The maximum session duration limit applies
when you use the C<AssumeRole*> API operations or the C<assume-role*>
CLI operations but does not apply when you use those operations to
create a console URL. For more information, see Using IAM Roles
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in
the I<IAM User Guide>.

The temporary security credentials created by
C<AssumeRoleWithWebIdentity> can be used to make API calls to any AWS
service with the following exception: you cannot call the STS service's
C<GetFederationToken> or C<GetSessionToken> APIs.

Optionally, you can pass an IAM access policy to this operation. If you
choose not to pass a policy, the temporary security credentials that
are returned by the operation have the permissions that are defined in
the access policy of the role that is being assumed. If you pass a
policy to this operation, the temporary security credentials that are
returned by the operation have the permissions that are allowed by both
the access policy of the role that is being assumed, I< B<and> > the
policy that you pass. This gives you a way to further restrict the
permissions for the resulting temporary security credentials. You
cannot use the passed policy to grant permissions that are in excess of
those allowed by the access policy of the role that is being assumed.
For more information, see Permissions for AssumeRole,
AssumeRoleWithSAML, and AssumeRoleWithWebIdentity
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html)
in the I<IAM User Guide>.

Before your application can call C<AssumeRoleWithWebIdentity>, you must
have an identity token from a supported identity provider and create a
role that the application can assume. The role that your application
assumes must trust the identity provider that is associated with the
identity token. In other words, the identity provider must be specified
in the role's trust policy.

Calling C<AssumeRoleWithWebIdentity> can result in an entry in your AWS
CloudTrail logs. The entry includes the Subject
(http://openid.net/specs/openid-connect-core-1_0.html#Claims) of the
provided Web Identity Token. We recommend that you avoid using any
personally identifiable information (PII) in this field. For example,
you could instead use a GUID or a pairwise identifier, as suggested in
the OIDC specification
(http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes).

For more information about how to use web identity federation and the
C<AssumeRoleWithWebIdentity> API, see the following resources:

=over

=item *

Using Web Identity Federation APIs for Mobile Apps
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html)
and Federation Through a Web-based Identity Provider
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).

=item *

Web Identity Federation Playground
(https://web-identity-federation-playground.s3.amazonaws.com/index.html).
This interactive website lets you walk through the process of
authenticating via Login with Amazon, Facebook, or Google, getting
temporary security credentials, and then using those credentials to
make a request to AWS.

=item *

AWS SDK for iOS (http://aws.amazon.com/sdkforios/) and AWS SDK for
Android (http://aws.amazon.com/sdkforandroid/). These toolkits contain
sample apps that show how to invoke the identity providers, and then
how to use the information from these providers to get and use
temporary security credentials.

=item *

Web Identity Federation with Mobile Applications
(http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications).
This article discusses web identity federation and shows an example of
how to use web identity federation to get access to content in Amazon
S3.

=back



=head2 DecodeAuthorizationMessage

=over

=item EncodedMessage => Str


=back

Each argument is described in detail in: L<Paws::STS::DecodeAuthorizationMessage>

Returns: a L<Paws::STS::DecodeAuthorizationMessageResponse> instance

Decodes additional information about the authorization status of a
request from an encoded message returned in response to an AWS request.

For example, if a user is not authorized to perform an action that he
or she has requested, the request returns a
C<Client.UnauthorizedOperation> response (an HTTP 403 response). Some
AWS actions additionally return an encoded message that can provide
details about this authorization failure.

Only certain AWS actions return an encoded authorization message. The
documentation for an individual action indicates whether that action
returns an encoded message in addition to returning an HTTP code.

The message is encoded because the details of the authorization status
can constitute privileged information that the user who requested the
action should not see. To decode an authorization status message, a
user must be granted permissions via an IAM policy to request the
C<DecodeAuthorizationMessage> (C<sts:DecodeAuthorizationMessage>)
action.

The decoded message includes the following type of information:

=over

=item *

Whether the request was denied due to an explicit deny or due to the
absence of an explicit allow. For more information, see Determining
Whether a Request is Allowed or Denied
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow)
in the I<IAM User Guide>.

=item *

The principal who made the request.

=item *

The requested action.

=item *

The requested resource.

=item *

The values of condition keys in the context of the user's request.

=back



=head2 GetCallerIdentity






Each argument is described in detail in: L<Paws::STS::GetCallerIdentity>

Returns: a L<Paws::STS::GetCallerIdentityResponse> instance

Returns details about the IAM identity whose credentials are used to
call the API.


=head2 GetFederationToken

=over

=item Name => Str

=item [DurationSeconds => Int]

=item [Policy => Str]


=back

Each argument is described in detail in: L<Paws::STS::GetFederationToken>

Returns: a L<Paws::STS::GetFederationTokenResponse> instance

Returns a set of temporary security credentials (consisting of an
access key ID, a secret access key, and a security token) for a
federated user. A typical use is in a proxy application that gets
temporary security credentials on behalf of distributed applications
inside a corporate network. Because you must call the
C<GetFederationToken> action using the long-term security credentials
of an IAM user, this call is appropriate in contexts where those
credentials can be safely stored, usually in a server-based
application. For a comparison of C<GetFederationToken> with the other
APIs that produce temporary credentials, see Requesting Temporary
Security Credentials
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS APIs
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

If you are creating a mobile-based or browser-based app that can
authenticate users using a web identity provider like Login with
Amazon, Facebook, Google, or an OpenID Connect-compatible identity
provider, we recommend that you use Amazon Cognito
(http://aws.amazon.com/cognito/) or C<AssumeRoleWithWebIdentity>. For
more information, see Federation Through a Web-based Identity Provider
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).

The C<GetFederationToken> action must be called by using the long-term
AWS security credentials of an IAM user. You can also call
C<GetFederationToken> using the security credentials of an AWS root
account, but we do not recommended it. Instead, we recommend that you
create an IAM user for the purpose of the proxy application and then
attach a policy to the IAM user that limits federated users to only the
actions and resources that they need access to. For more information,
see IAM Best Practices
(http://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
in the I<IAM User Guide>.

The temporary security credentials that are obtained by using the
long-term credentials of an IAM user are valid for the specified
duration, from 900 seconds (15 minutes) up to a maximium of 129600
seconds (36 hours). The default is 43200 seconds (12 hours). Temporary
credentials that are obtained by using AWS root account credentials
have a maximum duration of 3600 seconds (1 hour).

The temporary security credentials created by C<GetFederationToken> can
be used to make API calls to any AWS service with the following
exceptions:

=over

=item *

You cannot use these credentials to call any IAM APIs.

=item *

You cannot call any STS APIs except C<GetCallerIdentity>.

=back

B<Permissions>

The permissions for the temporary security credentials returned by
C<GetFederationToken> are determined by a combination of the following:

=over

=item *

The policy or policies that are attached to the IAM user whose
credentials are used to call C<GetFederationToken>.

=item *

The policy that is passed as a parameter in the call.

=back

The passed policy is attached to the temporary security credentials
that result from the C<GetFederationToken> API call--that is, to the
I<federated user>. When the federated user makes an AWS request, AWS
evaluates the policy attached to the federated user in combination with
the policy or policies attached to the IAM user whose credentials were
used to call C<GetFederationToken>. AWS allows the federated user's
request only when both the federated user I< B<and> > the IAM user are
explicitly allowed to perform the requested action. The passed policy
cannot grant more permissions than those that are defined in the IAM
user policy.

A typical use case is that the permissions of the IAM user whose
credentials are used to call C<GetFederationToken> are designed to
allow access to all the actions and resources that any federated user
will need. Then, for individual users, you pass a policy to the
operation that scopes down the permissions to a level that's
appropriate to that individual user, using a policy that allows only a
subset of permissions that are granted to the IAM user.

If you do not pass a policy, the resulting temporary security
credentials have no effective permissions. The only exception is when
the temporary security credentials are used to access a resource that
has a resource-based policy that specifically allows the federated user
to access the resource.

For more information about how permissions work, see Permissions for
GetFederationToken
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getfederationtoken.html).
For information about using C<GetFederationToken> to create temporary
security credentials, see GetFederationTokenE<mdash>Federation Through
a Custom Identity Broker
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken).


=head2 GetSessionToken

=over

=item [DurationSeconds => Int]

=item [SerialNumber => Str]

=item [TokenCode => Str]


=back

Each argument is described in detail in: L<Paws::STS::GetSessionToken>

Returns: a L<Paws::STS::GetSessionTokenResponse> instance

Returns a set of temporary credentials for an AWS account or IAM user.
The credentials consist of an access key ID, a secret access key, and a
security token. Typically, you use C<GetSessionToken> if you want to
use MFA to protect programmatic calls to specific AWS APIs like Amazon
EC2 C<StopInstances>. MFA-enabled IAM users would need to call
C<GetSessionToken> and submit an MFA code that is associated with their
MFA device. Using the temporary security credentials that are returned
from the call, IAM users can then make programmatic calls to APIs that
require MFA authentication. If you do not supply a correct MFA code,
then the API returns an access denied error. For a comparison of
C<GetSessionToken> with the other APIs that produce temporary
credentials, see Requesting Temporary Security Credentials
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS APIs
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

The C<GetSessionToken> action must be called by using the long-term AWS
security credentials of the AWS account or an IAM user. Credentials
that are created by IAM users are valid for the duration that you
specify, from 900 seconds (15 minutes) up to a maximum of 129600
seconds (36 hours), with a default of 43200 seconds (12 hours);
credentials that are created by using account credentials can range
from 900 seconds (15 minutes) up to a maximum of 3600 seconds (1 hour),
with a default of 1 hour.

The temporary security credentials created by C<GetSessionToken> can be
used to make API calls to any AWS service with the following
exceptions:

=over

=item *

You cannot call any IAM APIs unless MFA authentication information is
included in the request.

=item *

You cannot call any STS API I<except> C<AssumeRole> or
C<GetCallerIdentity>.

=back

We recommend that you do not call C<GetSessionToken> with root account
credentials. Instead, follow our best practices
(http://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#create-iam-users)
by creating one or more IAM users, giving them the necessary
permissions, and using IAM users for everyday interaction with AWS.

The permissions associated with the temporary security credentials
returned by C<GetSessionToken> are based on the permissions associated
with account or IAM user whose credentials are used to call the action.
If C<GetSessionToken> is called using root account credentials, the
temporary credentials have root account permissions. Similarly, if
C<GetSessionToken> is called using the credentials of an IAM user, the
temporary credentials have the same permissions as the IAM user.

For more information about using C<GetSessionToken> to create temporary
credentials, go to Temporary Credentials for Users in Untrusted
Environments
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken)
in the I<IAM User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

