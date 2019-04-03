package Paws::MediaLive::AudioPidSelection;
  use Moose;
  has Pid => (is => 'ro', isa => 'Int', request_name => 'pid', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioPidSelection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioPidSelection object:

  $service_obj->Method(Att1 => { Pid => $value, ..., Pid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioPidSelection object:

  $result = $service_obj->Method(...);
  $result->Att1->Pid

=head1 DESCRIPTION

Placeholder documentation for AudioPidSelection

=head1 ATTRIBUTES


=head2 B<REQUIRED> Pid => Int

  Selects a specific PID from within a source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

