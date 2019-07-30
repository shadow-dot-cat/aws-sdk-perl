package Paws::FSX::SelfManagedActiveDirectoryConfigurationUpdates;
  use Moose;
  has DnsIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Password => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::SelfManagedActiveDirectoryConfigurationUpdates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::SelfManagedActiveDirectoryConfigurationUpdates object:

  $service_obj->Method(Att1 => { DnsIps => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::SelfManagedActiveDirectoryConfigurationUpdates object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsIps

=head1 DESCRIPTION

The configuration that Amazon FSx uses to join the Windows File Server
instance to the self-managed Microsoft Active Directory (AD) directory.

=head1 ATTRIBUTES


=head2 DnsIps => ArrayRef[Str|Undef]

  A list of up to two IP addresses of DNS servers or domain controllers
in the self-managed AD directory.


=head2 Password => Str

  The password for the service account on your self-managed AD domain
that Amazon FSx will use to join to your AD domain.


=head2 UserName => Str

  The user name for the service account on your self-managed AD domain
that Amazon FSx will use to join to your AD domain. This account must
have the permission to join computers to the domain in the
organizational unit provided in C<OrganizationalUnitDistinguishedName>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
