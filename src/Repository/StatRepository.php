<?php declare(strict_types=1);

namespace App\Repository;

final class StatRepository
{
    private DefaultRepository $defaultRepository;

    public function __construct(DefaultRepository $defaultRepository)
    {
        $this->defaultRepository = $defaultRepository;
    }

    public function findActiveNetworks(int $minRate = 0): array
    {
        return $this->defaultRepository->fetchAll(
            'SELECT n.* FROM networks as n, programs as p WHERE p.network_id = n.id and p.active = 1 and p.rate > :rate',
            ['rate' => $minRate]
        );
    }
}
