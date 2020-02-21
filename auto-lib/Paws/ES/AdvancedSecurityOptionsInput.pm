package Paws::ES::AdvancedSecurityOptionsInput;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has InternalUserDatabaseEnabled => (is => 'ro', isa => 'Bool');
  has MasterUserOptions => (is => 'ro', isa => 'Paws::ES::MasterUserOptions');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::AdvancedSecurityOptionsInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::AdvancedSecurityOptionsInput object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., MasterUserOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::AdvancedSecurityOptionsInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Specifies the advanced security configuration: whether advanced
security is enabled, whether the internal database option is enabled,
master username and password (if internal database is enabled), and
master user ARN (if IAM is enabled).

=head1 ATTRIBUTES


=head2 Enabled => Bool

  True if advanced security is enabled.


=head2 InternalUserDatabaseEnabled => Bool

  True if the internal user database is enabled.


=head2 MasterUserOptions => L<Paws::ES::MasterUserOptions>

  Credentials for the master user: username and password, ARN, or both.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
