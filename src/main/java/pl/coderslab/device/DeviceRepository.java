package pl.coderslab.device;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.airfield.Airfield;
import pl.coderslab.owner.Owner;
import pl.coderslab.type.Type;

import java.util.List;

interface DeviceRepository extends JpaRepository<Device, Long> {
    List<Device> findAllByType(Type type);

    List<Device> findAllByOwner(Owner owner);

    List<Device> findAllByAirfield(Airfield airfield);
}
