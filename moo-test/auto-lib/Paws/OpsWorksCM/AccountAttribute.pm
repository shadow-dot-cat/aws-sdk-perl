package Paws::OpsWorksCM::AccountAttribute;
  use Moose;
  has Maximum => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has Used => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::AccountAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorksCM::AccountAttribute object:

  $service_obj->Method(Att1 => { Maximum => $value, ..., Used => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorksCM::AccountAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Maximum

=head1 DESCRIPTION

Stores account attributes.

=head1 ATTRIBUTES


=head2 Maximum => Int

  The maximum allowed value.


=head2 Name => Str

  The attribute name. The following are supported attribute names.

=over

=item *

I<ServerLimit:> The number of current servers/maximum number of servers
allowed. By default, you can have a maximum of 10 servers.

=item *

I<ManualBackupLimit:> The number of current manual backups/maximum
number of backups allowed. By default, you can have a maximum of 50
manual backups saved.

=back



=head2 Used => Int

  The current usage, such as the current number of servers that are
associated with the account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

